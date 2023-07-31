local GC_Sniffer = CreateFrame("Frame")
GC_Sniffer:RegisterEvent("CHAT_MSG_SYSTEM")
GC_Sniffer:SetScript("OnEvent", function (self, event, message, sender)
local myNome = GetUnitName("player")
local hshStran3
testGM=gmTest(sender)
hshStran3=hshSenderNomeC(myNome)


if incTabC ~= nil then
	local spisokQ = mysplit(printPar(incTabC))
	for i=1, #spisokQ do
		local nomeTab = testTab(spisokQ[i])
	end

	if #spisokQ ~= 0 then
		for i=1, #spisokQ do
			if inQuest[spisokQ[i]]["старт"] ~= nil then
				numRez=tostring(inQuest[spisokQ[i]]["старт"])
				if incTabC[spisokQ[i]]["систем"] ~= nil then
					if incTabC[spisokQ[i]]["систем"][numRez] ~= nil then
						if incTabC[spisokQ[i]]["систем"][numRez]["таргет"] ~= nil then
							x=testNpc(incTabC[spisokQ[i]]["систем"][numRez]["таргет"])
							x=tostring(x)
						end
						if incTabC[spisokQ[i]]["систем"][numRez]["сообщение"] ~= nil then
							if x == "1" and string.find (message, incTabC[spisokQ[i]]["систем"][numRez]["сообщение"]) then
								local systemOtvety = mysplit(printPar(incTabC[spisokQ[i]]["систем"][numRez]["ответы"]))
								for k=1,#systemOtvety do
									numK=tostring(k)
									SendChatMessage(incTabC[spisokQ[i]]["систем"][numRez]["ответы"][numK], "OFFICER", nil, 1)
								end
								SendAddonMessage("NSGadd", "#buhloXXX", "guild")
								inQuest[spisokQ[i]]["старт"] = inQuest[spisokQ[i]]["старт"]+1
							end
						end
						if incTabC[spisokQ[i]]["систем"][numRez]["провал"] ~= nil then
							if string.find (message, incTabC[spisokQ[i]]["систем"][numRez]["провал"], 1, true) then
								local systemProvalOtv = mysplit(printPar(incTabC[spisokQ[i]]["систем"][numRez]["провалОтв"]))
								for l=1, #systemProvalOtv do
									numL=tostring(l)
									SendChatMessage(incTabC[spisokQ[i]]["систем"][numRez]["провалОтв"][numL], "OFFICER", nil, 1)
								end
								SendChatMessage("Квест провален.", "OFFICER", nil, 1)
								inQuest[spisokQ[i]]["старт"] = nil
							end
						end
					end
				end
			end
		end
	end
end
end)

local frameTime = CreateFrame("FRAME")
local timeElapsed = 0
frameTime:HookScript("OnUpdate", function(self, elapsed)
if inQuest ~= nil then
	timeElapsed = timeElapsed + elapsed
	if timeElapsed > 0.1 then
		timeElapsed = 0
		spell, rank, displayName, icon, startTime, endTime, isTradeSkill, castID, interrupt = UnitCastingInfo("player")
		if spell ~= nil then
			local spisokQ
			local qSystem
			local zapretSkill
			local zapSkillOtv
			if incTabC ~= nil then
				spisokQ = mysplit(printPar(incTabC))
				for i=1, #spisokQ do
					local nomeTab = testTab(spisokQ[i])
					if inQuest[spisokQ[i]]["старт"] ~= nil then
						numRez=tostring(inQuest[spisokQ[i]]["старт"])
						qSystem = mysplit(printPar(incTabC[spisokQ[i]]["систем"]))

						if incTabC[spisokQ[i]]["систем"][numRez] ~= nil then
							if incTabC[spisokQ[i]]["систем"][numRez]["запрет_скиллы"] ~= nil then
								spell, rank, displayName, icon, startTime, endTime, isTradeSkill, castID, interrupt = UnitCastingInfo("player")
								zapretSkill = mysplit(printPar(incTabC[spisokQ[i]]["систем"][numRez]["запрет_скиллы"]))
								for zapS=1,#zapretSkill-1 do
									numZapS=tostring(zapS)
									if spell == incTabC[spisokQ[i]]["систем"][numRez]["запрет_скиллы"][numZapS] then
										zapSkillOtv = mysplit(printPar(incTabC[spisokQ[i]]["систем"][numRez]["запрет_скиллы"]["ответы"]))
										for zapSOtv=1,#zapSkillOtv do
											numZapSOtv = tostring(zapSOtv)
											SendChatMessage(incTabC[spisokQ[i]]["систем"][numRez]["запрет_скиллы"]["ответы"][numZapSOtv], "OFFICER", nil, 1)
										end
										inQuest[spisokQ[i]]["старт"] = nil
									end
								end
							end
						end
					end
				end
			end
		end
	end
end
end)

local frameTime = CreateFrame("FRAME")
local timeElapsed = 0
frameTime:HookScript("OnUpdate", function(self, elapsed)
local myNome = GetUnitName("player")
if testQ["t1"] ~= nil then
	timeElapsed = timeElapsed + elapsed
	if timeElapsed > 1 then
		timeElapsed = 0
		testQ["t1"]=testQ["t1"]+0.5
		if testQ["t1"]>3 then
			if incTabC ~= nil then
				spisokQ = mysplit(printPar(incTabC))
				for i=1, #spisokQ do
					local nomeTab = testTab(spisokQ[i])
					if inQuest[spisokQ[i]]["старт"] ~= nil then
						SendAddonMessage("NSGadd " .. myNome .. " аддон типа обнулен ", spisokQ[i] .. " " .. inQuest[spisokQ[i]]["старт"], "guild")
						inQuest[spisokQ[i]]["старт"] = nil
						SendChatMessage("Квест провален потому что я трусливо сбежал из мира..", "OFFICER", nil, 1)
						testQ["t1"] = nil
					else
						testQ["t1"] = nil
					end
				end
			end
		end
	end
end

end)

local function OnEvent(self, event, ...)
	if arg1 == "NSQC" then
		local myNome = GetUnitName("player")
		local t = time()
		local t1
		if testQ["t1"] == nil then
			testQ["t1"] = t
		end
	end
end

local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", OnEvent)
