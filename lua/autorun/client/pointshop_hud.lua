--- Main Code
print("Initialized Pointshop Hud")
surface.CreateFont( "hud_font", 
                    {
                    font    = "pgfont1",
                    size    = 20,
                    weight  = 500,  
                    antialias = true ,
                    shadow = true
            })
function DrawHUD()
	surface.SetFont("hud_font")
	local w = surface.GetTextSize(PS.Config.PointsName..":"..LocalPlayer():PS_GetPoints())
	draw.RoundedBoxEx(8, ScrW()-w-19, -1, w+22, 32, Color(255,255,255,200), false, false, true, false)
	draw.RoundedBoxEx(8, ScrW()-w-20, 0, w+20, 30, Color(0,0,0,150), false, false, true, false)
	draw.SimpleTextOutlined(PS.Config.PointsName..":"..LocalPlayer():PS_GetPoints() , "hud_font", ScrW()-5, 5, Color(115,115,255,255), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT, 1, Color(0,0,0,255))
end
hook.Add("HUDPaint", "DrawHUD", DrawHUD)