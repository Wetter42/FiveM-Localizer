local timerValue = Config.Timer * 1000

local function ShowNotification(text)
	BeginTextCommandThefeedPost('STRING')
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandThefeedPostTicker(true, true)
end

local function isAvaliable(runway)
	if not Config.Flags[runway] then
		return true
	end
	return false
end

function Alert(text)
	if Config.Debug then
		print(text)
	elseif Config.Notification then
		ShowNotification(text)
	end
end

--[[ DrawMarker Functions representing each runway! ]]
function drawMarkerRunway(runway)
	if runway == 1 then
		if isAvaliable(runway) then
			--[[ Short Runway, 21 / 3 LSIA ]]
			local timer = timerValue
			Config.Flags[runway] = true
			CreateThread(function()
				while Config.Flags[runway] do
					DrawMarker(43, -1509.31, -2510.32, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 150.0, 25000.0, 0.01, 1500.75, 255, 200, 200, 30, false, false, 2, false, false, false, false)
					Wait(0)
					timer = timer - 1
					if timer <= 0 then
						Config.Flags[runway] = false
					end
				end
			end)
		end
	elseif runway == 2 then
		if isAvaliable(runway) then
			--[[ Medium Runway, 12L / 30R LSIA ]]
			local timer = timerValue
			Config.Flags[runway] = true
			CreateThread(function()
				while Config.Flags[runway] do
					DrawMarker(43, -1239.11, -3005.05, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 60.0, 25000.0, 0.01, 1500.75, 255, 200, 200, 30, false, false, 2, false, false, false, false)
					Wait(0)
					timer = timer - 1
					if timer <= 0 then
						Config.Flags[runway] = false
					end
				end
			end)
		end
	elseif runway == 3 then
		if isAvaliable(runway) then
			--[[ Long Runway, 12L / 30R LSIA ]]
			local timer = timerValue
			Config.Flags[runway] = true
			CreateThread(function()
				while Config.Flags[runway] do
					DrawMarker(43, -1333.61, -3145.17, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 60.0, 25000.0, 0.01, 1500.75, 255, 200, 200, 30, false, false, 2, false, false, false, false)
					Wait(0)
					timer = timer - 1
					if timer <= 0 then
						Config.Flags[runway] = false
					end
				end
			end)
		end
	elseif runway == 4 then
		if isAvaliable(runway) then
			--[[ Long runway 28L / 11R SSAP ]]
			local timer = timerValue
			Config.Flags[runway] = true
			CreateThread(function()
				while Config.Flags[runway] do
					DrawMarker(43, 1319.28, 3146.99, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 105.077, 20000.0, 0.01, 1500.75, 200, 255, 200, 32, false, false, 2, false, false, false, false)
					Wait(0)
					timer = timer - 1
					if timer <= 0 then
						Config.Flags[runway] = false
					end
				end
			end)
		end
	elseif runway == 5 then
		if isAvaliable(runway) then
			--[[ Short runway 28R / 11L SSAP ]]
			local timer = timerValue
			Config.Flags[runway] = true
			CreateThread(function()
				while Config.Flags[runway] do
					DrawMarker(43, 1336.32, 3083.85, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 105.077, 20000.0, 0.01, 1500.75, 200, 255, 200, 32, false, false, 2, false, false, false, false)
					Wait(0)
					timer = timer - 1
					if timer <= 0 then
						Config.Flags[runway] = false
					end
				end
			end)
		end
	elseif runway == 6 then
		if isAvaliable(runway) then
			--[[  ]]
			local timer = timerValue
			Config.Flags[runway] = true
			CreateThread(function()
				while Config.Flags[runway] do
					DrawMarker(43, 1489.15, 3088.09, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 134.9, 7000.0, 0.01, 1500.75, 200, 255, 200, 32, false, false, 2, false, false, false, false)
					Wait(0)
					timer = timer - 1
					if timer <= 0 then
						Config.Flags[runway] = false
					end
				end
			end)
		end
	elseif runway == 7 then
		if isAvaliable(runway) then
			--[[  ]]
			local timer = timerValue
			Config.Flags[runway] = true
			CreateThread(function()
				while Config.Flags[runway] do
					DrawMarker(43, -2414.65, 3093.5, 0.0, 5.0, 0.0, 0.0, 0.0, 0.0, 59.99, 21000.0, 0.01, 1500.75, 200, 200, 255, 32, false, false, 2, false, false, false, false)
					Wait(0)
					timer = timer - 1
					if timer <= 0 then
						Config.Flags[runway] = false
					end
				end
			end)
		end
	end
end
