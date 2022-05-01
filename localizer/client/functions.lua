function ShowNotification(text)
    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandThefeedPostTicker(true, true)
end

function Alert(text)
	if Config.Debug then
	    print(text)
    elseif Config.Notification then
        ShowNotification(text)
    end
end

--[[ DrawMarker Functions representing each runway! ]]

function lsia213()
	--Short Runway, 21 / 3 LSIA
	DrawMarker(43, -1509.31, -2510.32, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 150.0, 25000.0, 0.01, 1500.75, 255, 200, 200, 30, false, false, 2, false, false, false, false)
end

function lsia12l30r()
	--Medium Runway, 12L / 30R LSIA
	DrawMarker(43, -1239.11, -3005.05, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 60.0, 25000.0, 0.01, 1500.75, 255, 200, 200, 30, false, false, 2, false, false, false, false)
end

function lsia12r30l()	
	--Long Runway, 12R / 30L LSIA
	DrawMarker(43, -1333.61, -3145.17, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 60.0, 25000.0, 0.01, 1500.75, 255, 200, 200, 30, false, false, 2, false, false, false, false)
end

function ssap28l11r()
	--Long runway 28L / 11R SSAP
	DrawMarker(43, 1319.28, 3146.99, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 105.077, 20000.0, 0.01, 1500.75, 200, 255, 200, 32, false, false, 2, false, false, false, false)
end

function ssap28r11l()
	--Short runway 28R / 11L SSAP
	DrawMarker(43, 1336.32, 3083.85, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 105.077, 20000.0, 0.01, 1500.75, 200, 255, 200, 32, false, false, 2, false, false, false, false)
end

function ssap32()
	DrawMarker(43, 1489.15, 3088.09, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 134.9, 7000.0, 0.01, 1500.75, 200, 255, 200, 32, false, false, 2, false, false, false, false)
end

function fzab30()
	DrawMarker(43, -2414.65, 3093.5, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 59.99, 21000.0, 0.01, 1500.75, 200, 200, 255, 32, false, false, 2, false, false, false, false)
end
