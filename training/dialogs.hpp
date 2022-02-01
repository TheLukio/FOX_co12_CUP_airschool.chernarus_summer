class silbertraining_dialog
{
	idd=-1;
	movingenable=false;

	class controls 
	{
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Lukio, v1.063, #Byqina)
////////////////////////////////////////////////////////

class silber_training_dialog_frame: RscFrame
{
	idc = 1800;
	text = "SILBER TRAINING INTERFACE"; //--- ToDo: Localize;
	x = 0.276563 * safezoneW + safezoneX;
	y = 0.236103 * safezoneH + safezoneY;
	w = 0.332292 * safezoneW;
	h = 0.395846 * safezoneH;
	sizeEx = 1 * GUI_GRID_H;
};
class silber_training_dialog_box: Box
{
	idc = 1;
	text = "SILBER TRAINING INTERFACE"; //--- ToDo: Localize;
	x = 0.276563 * safezoneW + safezoneX;
	y = 0.236103 * safezoneH + safezoneY;
	w = 0.332292 * safezoneW;
	h = 0.395846 * safezoneH;
	sizeEx = 1 * GUI_GRID_H;
};
class silber_training_text_basic: RscText
{
	idc = 1000;
	text = "Basic Training"; //--- ToDo: Localize;
	x = 0.282292 * safezoneW + safezoneX;
	y = 0.26909 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
};
class silber_training_txt_advanced: RscText
{
	idc = 1001;
	text = "Advanced Training"; //--- ToDo: Localize;
	x = 0.379688 * safezoneW + safezoneX;
	y = 0.26909 * safezoneH + safezoneY;
	w = 0.0973958 * safezoneW;
	h = 0.0329871 * safezoneH;
};
class silber_training_basic_helos: RscButton
{
	idc = 1600;
	text = "Basic Helo ON"; //--- ToDo: Localize;
	x = 0.288021 * safezoneW + safezoneX;
	y = 0.324069 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	action = "{[_x,false] remoteExec ['hideObjectGlobal',0,false]} foreach basichelomarkers;closeDialog 0;";
};
class silber_training_basic_helosoff: RscButton
{
	idc = 1601;
	text = "Basic Helo OFF"; //--- ToDo: Localize;
	x = 0.288021 * safezoneW + safezoneX;
	y = 0.368051 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	action = "{[_x,true] remoteExec ['hideObjectGlobal',0,false]} foreach basichelomarkers;closeDialog 0;";
};
class silber_training_autorot: RscButton
{
	idc = 1602;
	text = "ATR"; //--- ToDo: Localize;
	x = 0.385417 * safezoneW + safezoneX;
	y = 0.324069 * safezoneH + safezoneY;
	w = 0.035 * safezoneW;
	h = 0.0329871 * safezoneH;	
	action = "closeDialog 0; silber_autor = true;";
};
class silber_training_autorotoff: RscButton
{
	idc = 1603;
	text = "ATR OFF"; //--- ToDo: Localize;
	x = 0.425 * safezoneW + safezoneX;
	y = 0.324069 * safezoneH + safezoneY;
	w = 0.040 * safezoneW;
	h = 0.0329871 * safezoneH;
	action = "closeDialog 0; silber_autor = false;";
};
class silber_training_NOEAA: RscButton
{
	idc = 1604;
	text = "NOE"; //--- ToDo: Localize;
	x = 0.385417 * safezoneW + safezoneX;
	y = 0.368051 * safezoneH + safezoneY;
	w = 0.035 * safezoneW;
	h = 0.0329871 * safezoneH;
	action = "closeDialog 0; silber_noeaa = true;";
};
class silber_training_NOEAAOFF: RscButton
{
	idc = 1605;
	text = "NOE OFF"; //--- ToDo: Localize;
	x = 0.425 * safezoneW + safezoneX;
	y = 0.368051 * safezoneH + safezoneY;
	w = 0.040 * safezoneW;
	h = 0.0329871 * safezoneH;
	action = "closeDialog 0; silber_noeaa = false;";
};
class silber_training_atgtargets: RscButton
{
	idc = 1606;
	text = "ATG Targets"; //--- ToDo: Localize;
	x = 0.385417 * safezoneW + safezoneX;
	y = 0.412034 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
};
class silber_training_tank_targets: RscButton
{
	idc = 1607;
	text = "Tank Targets"; //--- ToDo: Localize;
	x = 0.385417 * safezoneW + safezoneX;
	y = 0.456017 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	action = "closeDialog 0; {_x setMarkerAlpha 1} foreach [""mrkATGRtargets"",""mrkATGR""]";
};
class silber_training_logistics: RscButton
{
	idc = 1608;
	text = "Basic Logistics"; //--- ToDo: Localize;
	x = 0.288021 * safezoneW + safezoneX;
	y = 0.412034 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
};
class silber_training_jets: RscButton
{
	idc = 1609;
	text = "Basic Jets"; //--- ToDo: Localize;
	x = 0.288021 * safezoneW + safezoneX;
	y = 0.456017 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
};
class silber_training_jtac: RscButton
{
	idc = 1610;
	text = "JTAC Area"; //--- ToDo: Localize;
	x = 0.385417 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	action = "closeDialog 0; {_x setMarkerAlpha 1} foreach [""jtac_area"",""jtac_warning"",""mrkJTACbunker_1"",""mrkJTACbunker_2""]";
};
class silber_training_txt_course: RscText
{
	idc = 1611;
	text = "Courses"; //--- ToDo: Localize;
	x = 0.482813 * safezoneW + safezoneX;
	y = 0.26909 * safezoneH + safezoneY;
	w = 0.0973958 * safezoneW;
	h = 0.0329871 * safezoneH;
};
class silber_training_lb_course: RscButton
{
	idc = 1612;
	text = "Littlebird"; //--- ToDo: Localize;
	x = 0.488542 * safezoneW + safezoneX;
	y = 0.324069 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	action = "closeDialog 0; {_x setMarkerAlpha 1} foreach LB_markers";
	};
class silber_training_ch_course: RscButton
{
	idc = 1613;
	text = "Blackhawk"; //--- ToDo: Localize;
	x = 0.488542 * safezoneW + safezoneX;
	y = 0.368051 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	action = "closeDialog 0; {_x setMarkerAlpha 1} foreach BH_markers";
};
class silber_training_bh_course: RscButton
{
	idc = 1614;
	text = "Chinook"; //--- ToDo: Localize;
	x = 0.488542 * safezoneW + safezoneX;
	y = 0.412034 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	action = "closeDialog 0; {_x setMarkerAlpha 1} foreach CH_markers";
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

};
};

