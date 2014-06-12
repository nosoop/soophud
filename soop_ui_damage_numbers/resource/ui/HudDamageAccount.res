"Resource/UI/HudDamageAccount.res"
{
	"CDamageAccountPanel"
	{
		"fieldName"				"CDamageAccountPanel"
		"text_x"				"0"
		"text_y"				"0"
		"delta_item_end_y"		"0"
		"PositiveColor"			"255 255 0 255" // RED GREEN BLUE ALPHA
		"NegativeColor"			"255 255 0 255"
		"delta_lifetime"		"3"
		"delta_item_font"		"HudFontMediumBold"
		"delta_item_font_big"	"HudFontMediumBold"
	}
	
    "DamageAccountValue"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"DamageAccountValue"
		"xpos"			"100" //"c-212"
		"ypos"			"r100"
		"zpos"			"2"
		"wide"			"101"
		"tall"			"26"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		"%metal%"
		"textAlignment"	"center"
		"fgcolor"		"255 255 0 255"
		"font"		"HudFontMedium"
	}
	
    "DamageAccountValueDropShadow"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"DamageAccountValueDropShadow"
		"xpos"			"100" //"c-212"
		"ypos"			"r99"
		"zpos"			"1"
		"wide"			"101"
		"tall"			"26"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		"%metal%"
		"textAlignment"	"center"
		"fgcolor"		"0 0 0 255"
		"font"		"HudFontMedium"
	}
}