--------------------------------------------------------------------------------
-- Module Declaration
--

local mod, CL = BigWigs:NewBoss("Grand Vizier Ertan", 657, 114)
if not mod then return end
mod:RegisterEnableMob(43878)
mod:SetEncounterID(1043)
mod:SetRespawnTime(30)

--------------------------------------------------------------------------------
-- Initialization
--

function mod:GetOptions()
	return {
		86292, -- Cyclone Shield
		413151, -- Summon Tempest
		413562, -- Lethal Current
	}, {
		[86292] = self.displayName, -- Grand Vizier Ertan
		[413562] = -2423, -- Lurking Tempest
	}
end

function mod:OnBossEnable()
	-- Grand Vizier Ertan
	self:Log("SPELL_AURA_REMOVED", "StormsEdgeRemoved", 86295, 86310)
	self:Log("SPELL_AURA_APPLIED", "CycloneShieldApplied", 86292)
	self:Log("SPELL_CAST_START", "SummonTempest", 413151)

	-- Lurking Tempest
	self:Log("SPELL_CAST_START", "LethalCurrent", 413562)
end

function mod:OnEngage()
	self:CDBar(86292, 31.4) -- Cyclone Shield
end

--------------------------------------------------------------------------------
-- Event Handlers
--

-- Grand Vizier Ertan

function mod:StormsEdgeRemoved(args)
	if args.spellId == 86295 then -- Cyclone Shield starts
		self:Message(86292, "orange")
		self:PlaySound(86292, "long")
		self:CDBar(86292, 40.1)
	else -- 86310,  Cyclone Shield Ends
		self:Message(86292, "green", CL.over:format(self:SpellName(86292)))
		self:PlaySound(86292, "info")
	end
end

do
	local prev = 0
	function mod:CycloneShieldApplied(args)
		if self:Me(args.destGUID) then
			local t = args.time
			if t - prev > 2 then
				prev = t
				self:PersonalMessage(args.spellId, "near")
				self:PlaySound(args.spellId, "underyou")
			end
		elseif self:Player(args.destFlags) and self:Dispeller("movement") then
			self:TargetMessage(args.spellId, "yellow", args.destName)
			self:PlaySound(args.spellId, "alert", nil, args.destName)
		end
	end
end

function mod:SummonTempest(args)
	self:Message(args.spellId, "yellow")
	self:PlaySound(args.spellId, "info")
end

-- Lurking Tempest

do
	local prev = 0
	function mod:LethalCurrent(args)
		if self:MobId(args.sourceGUID) == 204337 then -- Lurking Tempest (boss version)
			local t = args.time
			if t - prev > 1.5 then
				prev = t
				self:Message(args.spellId, "red", CL.casting:format(args.spellName))
				self:PlaySound(args.spellId, "alarm")
			end
		end
	end
end
