o.OnInitTemplate = CItem.StdOnInitTemplate

function o:OnCreateEntity()
--	self:AddTimer("Start",FRand(0.8,1.2))
--end
--
--function o:Start()
    MDL.SetRagdollLinearDamping(self._Entity,0.8)
    MDL.SetRagdollAngularDamping(self._Entity,0.8)
    MDL.EnableRagdoll(self._Entity,true,ECollisionGroups.RagdollNonColliding)
--	self:ReleaseTimers()
end

