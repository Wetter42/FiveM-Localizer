--[[ Borders Mod made by Wetter42! Feel free to use it but just give credit, and DO NOT take credit for this mod OR SELL IT! Love yah! ]]

local flaglsia213 = false
local flaglsia12l30r = false
local flaglsia12r30l = false
local flagssap28l11r = false
local flagssap28r11l = false
local flagssap32 = false
local flagfzab30 = false

RegisterCommand("lizer", function(source, args, RawCommand)
	if args[1] == 'lsia' or args[1] == 'LSIA' then

		if args[2] == '21' or args[2] == '3' then
			flaglsia213 = not flaglsia213
		elseif args[2] == '12l' or args[2] == '12L' or args[2] == '30r' or args[2] == '30R' then
			flaglsia12l30r = not flaglsia12l30r
		elseif args[2] == '12r' or args[2] == '12R' or args[2] == '30l' or args[2] == '30L' then
			flaglsia12r30l = not flaglsia12r30l
		elseif args[2] == '?' then
			Alert('Available runways for LSIA:\n12R / 30L\n12L / 30R\n 3 / 21')
 		else
			Alert('Invalid runway number for Los Santos International Airport!')
		end

	elseif args[1] == 'ssap' or args[1] == 'SSAP' then

		if args[2] == '28l' or args[2] == '28L' or args[2] == '11r' or args[2] == '11R' then
			flagssap28l11r = not flagssap28l11r
		elseif args[2] == '28r' or args[2] == '28R' or args[2] == '11l' or args[2] == '11L' then
			flagssap28r11l = not flagssap28r11l
		elseif args[2] == '32' then
			flagssap32 = not flagssap32
		elseif args[2] == '?' then
			Alert('Available runways for SSAP:\n28L / 11R\n28R / 11L\n32')
		else
			Alert('Invalid runway number for Sandy Shores Airport!')
		end

	elseif args[1] == 'fzab' or args[1] == 'FZAB' then

		if args[2] == '30' then
			flagfzab30 = not flagfzab30
		elseif args[2] == '?' then
			Alert('Available runways for FZAB:\n30')
		else
			Alert('Invalid runway number for Fort Zancudo Airbase!')
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
		Alert("Wrong usage! Please try /lizer (airport) (runway number) or /lizer off")
	end
end)


CreateThread(function()
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
	Wait(0)
	end
end)
