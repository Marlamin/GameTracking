--============ Copyright (c) Valve Corporation, All rights reserved. ==========
--
-- source1import auto-generated animation script
-- local changes will be overwritten if source1import if run again on this asset
--
-- qc:  models/items/beastmaster/boar/beast_deming/beast_deming.qc
-- mdl: items/beastmaster/boar/beast_deming/beast_deming.mdl
--
--=============================================================================

model:CreateSequence(
	{
		name = "courier_turn_center",
		delta = true,
		fadeInTime = 0,
		fadeOutTime = 0,
		fps = 30,
		cmds = {
			{ cmd = "fetchframe", sequence = "beast_turns.dmx", frame = 1, dst = 1 },
			{ cmd = "fetchframe", sequence = "center_pose", frame = 0, dst = 2 },
			{ cmd = "subtract", dst = 1, src = 2 },
			{ cmd = "slerp", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "courier_turn_left",
		delta = true,
		fadeInTime = 0,
		fadeOutTime = 0,
		fps = 30,
		cmds = {
			{ cmd = "fetchframe", sequence = "beast_turns.dmx", frame = 0, dst = 1 },
			{ cmd = "fetchframe", sequence = "center_pose", frame = 0, dst = 2 },
			{ cmd = "subtract", dst = 1, src = 2 },
			{ cmd = "slerp", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "courier_turn_right",
		delta = true,
		fadeInTime = 0,
		fadeOutTime = 0,
		fps = 30,
		cmds = {
			{ cmd = "fetchframe", sequence = "beast_turns.dmx", frame = 2, dst = 1 },
			{ cmd = "fetchframe", sequence = "center_pose", frame = 0, dst = 2 },
			{ cmd = "subtract", dst = 1, src = 2 },
			{ cmd = "slerp", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "courier_turns",
		delta = true,
		fadeInTime = 0.2,
		fadeOutTime = 0.2,
		poseParamX = model:CreatePoseParameter( "turn", -1, 1, 0, false ),
		sequences = {
			{ "courier_turn_left", "courier_turn_center", "courier_turn_right" }
		}
	}
)


model:CreateSequence(
	{
		name = "beast_runx",
		looping = true,
		fadeInTime = 0.2,
		fadeOutTime = 0.2,
		sequences = {
			{ "@beast_runx" }
		},
		addlayer = { "courier_turns" },
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 1 }
		}
	}
)

