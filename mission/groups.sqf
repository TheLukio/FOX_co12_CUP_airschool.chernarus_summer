// Array of all groups that need IDs/Markers.
// FORMAT: [groupIDVariable,groupName,markerType,markerName,markerColor,createChannelGroup]
// * Markers are NEVER shared between sides.
// * You can edit the RGBA values to change the colours.
// * You can delete any groups you're not using (e.g. remove '_grpBLU = [ ... ];' if you're OPFOR).
// ====================================================================================
private ["_red", "_blue", "_green", "_yellow", "_orange", "_purple", "_black", "_white"];
_red = 		[1,   0,   0,   1	];
_blue = 	[0,   0,   1,   1	];
_green = 	[0,   0.5, 0,   1	];
_yellow = 	[1,   1,   0,   1	];
_orange = 	[1,   0.6, 0,   1	];
_purple	=	[0.5, 0,   0.5, 1 	];
_black =	[0.2,   0.2,   0.2,   1	];
_white =	[1,   1,   1,   1	];

_grpBLU = [
	 ["GrpBLU_CO","Command","b_hq"," Command",_yellow,"Command Net"]  //30 LR / 100 SR
	,["GrpBLU_TH1","Foxtrot 1","b_air"," Foxtrot 1",_green,"Air"] // 31 LR / 31.1 SR
	,["GrpBLU_TH2","Foxtrot 2","b_air"," Foxtrot 2",_green,"Air"]  //32 / 32.1 SR
	,["GrpBLU_TH3","Foxtrot 3","b_air"," Foxtrot 3",_green,"Air"] //33 LR / 33.1 SR
	,["GrpBLU_TH4","Foxtrot 4","b_air"," Foxtrot 4",_green,"Air"] // 34 LR / 41.1 SR
	,["GrpBLU_ECHO1","Echo 1","b_recon"," Echo 1",_orange,"Recon"] // 40 LR / 42.1 SR
	,["GrpBLU_ECHO2","Echo 2","b_recon"," Echo 2",_orange,"Recon"] // 50 LR / 50.1 SR
	];

_grpOPF = [
];

_grpIND = [
];