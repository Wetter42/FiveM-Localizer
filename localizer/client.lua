--Borders Mod made by Wetter42! Feel free to use it but just give credit, and DO NOT take credit for this mod OR SELL IT! Love yah!

local flaglsia213 = false
local flaglsia12l30r = false
local flaglsia12r30l = false
local flagssap28l11r = false
local flagssap28r11l = false
local flagssap32 = false
local flagfzab30 = false


function ShowNotification( text )
        SetNotificationTextEntry("STRING")
        AddTextComponentSubstringPlayerName(text)
        DrawNotification(false, false)
end

function DisplayHelpText()
	SetTextComponentFormat("STRING")
	AddTextComponentString()
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

RegisterCommand("lizer", function(source, args, RawCommand)
	if args[1] == 'lsia' or args[1] == 'LSIA' then
		if args[2] == '21' or args[2] == '3' then
			flaglsia213 = not flaglsia213
		elseif args[2] == '12l' or args[2] == '12L' or args[2] == '30r' or args[2] == '30R' then
			flaglsia12l30r = not flaglsia12l30r
		elseif args[2] == '12r' or args[2] == '12R' or args[2] == '30l' or args[2] == '30L' then
			flaglsia12r30l = not flaglsia12r30l
		elseif args[2] == '?' then
			print('Available runways for LSIA:\n12R / 30L\n12L / 30R\n 3 / 21')
 		else
			print('Invalid runway number for Los Santos International Airport!')
		end
	



	
	elseif args[1] == 'ssap' or args[1] == 'SSAP' then
		if args[2] == '28l' or args[2] == '28L' or args[2] == '11r' or args[2] == '11R' then
			flagssap28l11r = not flagssap28l11r
		elseif args[2] == '28r' or args[2] == '28R' or args[2] == '11l' or args[2] == '11L' then
			flagssap28r11l = not flagssap28r11l
		elseif args[2] == '32' then
			flagssap32 = not flagssap32
		elseif args[2] == '?' then
			print('Available runways for SSAP:\n28L / 11R\n28R / 11L\n32')
		else 
			print('Invalid runway number for Sandy Shores Airport!')
		end
	
		
	elseif args[1] == 'fzab' or args[1] == 'FZAB' then
		if args[2] == '30' then
			flagfzab30 = not flagfzab30
		elseif args[2] == '?' then
			print('Available runways for FZAB:\n30')
		else
			print('Invalid runway number for Fort Zancudo Airbase!')
		end
	
	
	elseif args[1] == 'off' or args[1] == 'OFF' then
		flaglsia213 = false
		flaglsia12l30r = false
		flaglsia12r30l = false
		flagssap28l11r = false
		flagssap28r11l = false
		flagssap32 = false
		flagfzab30 = false
	else
		print("Wrong usage! Please try /lizer (airport) (runway number) or /lizer off")
	end
end)


--DrawMarker Functions representing each runway! 

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

Citizen.CreateThread(function()
        while true do
		if flaglsia213 == true then
			lsia213()
		end
		if flaglsia12l30r == true then
			lsia12l30r()
		end
		if flaglsia12r30l == true then
			lsia12r30l()
		end
		if flagssap28l11r == true then
			ssap28l11r()
		end
		if flagssap28r11l == true then
			ssap28r11l()
		end
		if flagssap32 == true then
			ssap32()
		end
		if flagfzab30 == true then
			fzab30()
		end
		Wait()
	end
end)
