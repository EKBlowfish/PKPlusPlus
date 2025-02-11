function Witch:OnInitTemplate()
    self:SetAIBrain()
	self._AIBrain._lastThrowTime = -100
end

function Witch:OnApply()
	ENTITY.PO_EnableGravity(self._Entity,false)
	self._flyWithAngle = true
	self._flyloop = self:BindRandomSound("fly",nil,nil,nil,nil,true)
	SND.SetVelocityScaleFactor(self._flyloop, 0.0)

	local brain = self._AIBrain
	self._upSpline = false
	self._Factor = 0
	self._splineMove = true
	self._splineSpeed = 0.2 * self._randomizedParams.FlySpeed
	local sp = {}
	if brain._walkArea then
		for i,v in brain._walkArea.Points do
			table.insert(sp, v)
		end
		self._CubicSpline = CalcNaturalCubicSpline(sp)
	else
		Game:Print(self._Name.." ERROR: walk area not found")
	end
end

function Witch:CustomOnDeath()
	ENTITY.PO_EnableGravity(self._Entity, true)
	self:StopSoundHitBinded()
	if self._flyloop then
		local snd = SND.GetSound3DPtr(self._flyloop)
		if snd then
			SOUND3D.SetVolume(snd, 0, 2.0)
		else
			ENTITY.Release(self._flyloop)
		end
		self._flyloop = nil
	end
    ENTITY.UnregisterAllChildren(self._Entity, ETypes.ParticleFX)
end

function Witch:CustomOnDeathAfterRagdoll()
	if self.pushRagdollAtDeathSpeed then
		local v = Vector:New(math.sin(self.angle), 0, math.cos(self.angle))
		v:Normalize()
		local speed = self.pushRagdollAtDeathSpeed
		MDL.ApplyVelocitiesToAllJoints(self._Entity, v.X*speed,v.Y*speed,v.Z*speed)
	end
end

function Witch:OnTick(delta)
	if self._splineMove and self._CubicSpline then
		if self._upSpline then
			self._Factor = self._Factor - self._splineSpeed * delta
			if self._Factor < 0 then
				--Game:Print("koniec latania0 "..self._Factor)
				self._splineMove = nil
				return
			end
		else
			self._Factor = self._Factor + self._splineSpeed * delta
			if self._Factor > 1 then
				--Game:Print("koniec latania1 "..self._Factor)
				self._splineMove = nil
				return
			end
		end
	end

    local aiParams = self.AiParams
    if not self._splineMove then
		if debugMarek then
			self._debugP = {}
		end
        if aiParams.walkAreaPingPong then
            if self._upSpline then
                self._Factor = 0.0
                self._upSpline = false
            else
                self._Factor = 1.0
                self._upSpline = true
            end
        else
            self._Factor = 0.0
        end
        self._splineMove = true
    else
        if self._lastPosX then
            local x,z = self.Pos.X,self.Pos.Z
            x = (x - self._lastPosX)
            z = (z - self._lastPosZ)
            if debugMarek then
	            self.DEBUG_P1 = self._lastPosX
		        self.DEBUG_P2 = self.Pos.Y
			    self.DEBUG_P3 = self._lastPosZ

				DEBUG1 = self.Pos.X
				DEBUG2 = self.Pos.Y
				DEBUG3 = self.Pos.Z
				DEBUG4 = self.Pos.X + x * 50
				DEBUG5 = self.Pos.Y
				DEBUG6 = self.Pos.Z + z * 50
			end
            --if math.sqrt((x*x) + (z*z)) > 0.01 then
                self:RotateToVector(self.Pos.X + x, 0, self.Pos.Z + z)
            --end
        end
        self._lastPosX = self.Pos.X
        self._lastPosZ = self.Pos.Z

		if debugMarek then
         if not self._debugP then
			self._debugP = {}
		 end
		 --table.insert(self._debugP, {self._lastPosX,self.Pos.Y,self._lastPosZ})
		end
		
    end
    
	local p = NCubicPoint(self._CubicSpline,self._Factor)
	ENTITY.SetPosition(self._Entity, p.X, p.Y, p.Z)
	self.Pos.X = p.X
	self.Pos.Y = p.Y
	self.Pos.Z = p.Z
end


Witch._CustomAiStates = {}
---------------------------------
Witch._CustomAiStates.witchFlyArea = {
	name = "witchFlyArea",
}

--function Witch._CustomAiStates.witchFlyArea:OnInit(brain)
--	local actor = brain._Objactor
--	self._lastPosX = actor._groundx
--	self._lastPosZ = actor._groundz
--end

function Witch._CustomAiStates.witchFlyArea:OnUpdate(brain)
--	local actor = brain._Objactor
--	local aiParams = actor.AiParams
end

--function Witch._CustomAiStates.witchFlyArea:OnRelease(brain)
--	local actor = brain._Objactor
--	local aiParams = actor.AiParams
--end

function Witch._CustomAiStates.witchFlyArea:Evaluate(brain)
	return 0.01
end


----------------------

Witch._CustomAiStates.witchThrow = {
	name = "witchThrow",
    _lastTimeSound = 0,
	delayRandom = FRand(3,6),
}

function Witch._CustomAiStates.witchThrow:OnInit(brain)
	local actor = brain._Objactor
	local aiParams = actor.AiParams
	self.oldAnim = actor.Animation
    if self.oldAnim == aiParams.throwAnim then
        self.oldAnim = "idle"
    end
	actor:SetAnim(aiParams.throwAnim, false)
    actor._disableHits = true
	self.active = true
end

function Witch._CustomAiStates.witchThrow:OnUpdate(brain)
	local actor = brain._Objactor
	local aiParams = actor.AiParams
	if not actor._isAnimating then
		self.active = false
		actor:SetAnim(self.oldAnim, true)
	end
	brain._lastThrowTime = brain._currentTime
end

function Witch._CustomAiStates.witchThrow:OnRelease(brain)
	local actor = brain._Objactor
	local aiParams = actor.AiParams

	self.delayRandom = FRand(0,aiParams.minDelayBetweenThrow)
	self.active = false
    actor._disableHits = nil
    if actor._objTakenToThrow then
        Game:Print(actor._Name.." ERROR: actor._objTakenToThrow still exists")
    end
end

function Witch._CustomAiStates.witchThrow:Evaluate(brain)
	if self.active then
		return 0.8
	else
        if brain.r_closestEnemy then
		    local actor = brain._Objactor
			local aiParams = actor.AiParams
            if brain._lastThrowTime + self.delayRandom + aiParams.minDelayBetweenThrow < brain._currentTime then
				if aiParams.throwAmmo > 0 then
					if brain._distToNearestEnemy < aiParams.throwRangeMax and brain._distToNearestEnemy > aiParams.throwRangeMin then
						return 0.61
					end
				end
			end
			if brain._distToNearestEnemy < aiParams.screamDistance and brain._distToNearestEnemy > aiParams.screamDistance-15 then
				if self._lastTimeSound + 3.0 < brain._currentTime then
					self._lastTimeSound = brain._currentTime
					local snd = actor:PlaySoundHitBinded("scream")
					SND.SetVelocityScaleFactor(snd, 0.0)
				end
			end
		end
	end
	return 0
end
