local mod	= DBM:NewMod("AgathelostheRaging", "DBM-Party-Classic", 10)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(4422)
--mod:SetEncounterID(438)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 8269"
)

--https://classic.wowhead.com/spell=8555/left-for-dead nani? is wowhead tripping? no mention of this in comments or guides
local warningEnrage				= mod:NewTargetNoFilterAnnounce(8269, 2)

--function mod:OnCombatStart(delay)

--end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 8269 then
		warningEnrage:Show(args.destName)
	end
end
