--[[ Borders Mod made by Wetter42! Feel free to use it but just give credit, and DO NOT take credit for this mod OR SELL IT! Love yah! ]]

RegisterCommand("lizer", function(source, args, RawCommand)
	if args[1] == 'lsia' or args[1] == 'LSIA' then

		if args[2] == '21' or args[2] == '3' then
			drawMarkerRunway(1)
		elseif args[2] == '12l' or args[2] == '12L' or args[2] == '30r' or args[2] == '30R' then
			drawMarkerRunway(2)
		elseif args[2] == '12r' or args[2] == '12R' or args[2] == '30l' or args[2] == '30L' then
			drawMarkerRunway(3)
		elseif args[2] == '?' then
			Alert('Available runways for LSIA:\n12R / 30L\n12L / 30R\n 3 / 21')
 		else
			Alert('Invalid runway number for Los Santos International Airport!')
		end

	elseif args[1] == 'ssap' or args[1] == 'SSAP' then

		if args[2] == '28l' or args[2] == '28L' or args[2] == '11r' or args[2] == '11R' then
			drawMarkerRunway(4)
		elseif args[2] == '28r' or args[2] == '28R' or args[2] == '11l' or args[2] == '11L' then
			drawMarkerRunway(5)
		elseif args[2] == '32' then
			drawMarkerRunway(6)
		elseif args[2] == '?' then
			Alert('Available runways for SSAP:\n28L / 11R\n28R / 11L\n32')
		else
			Alert('Invalid runway number for Sandy Shores Airport!')
		end

	elseif args[1] == 'fzab' or args[1] == 'FZAB' then

		if args[2] == '30' then
			drawMarkerRunway(7)
		elseif args[2] == '?' then
			Alert('Available runways for FZAB:\n30')
		else
			Alert('Invalid runway number for Fort Zancudo Airbase!')
		end

	elseif args[1] == 'off' or args[1] == 'OFF' then

		for _,v in ipairs(Config.Flags) do
			v = false
		end

	else
		Alert("Wrong usage! Please try /lizer (airport) (runway number) or /lizer off")
	end
end)
