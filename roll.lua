local GC_Sniffer = CreateFrame("Frame")
GC_Sniffer:RegisterEvent("CHAT_MSG_SYSTEM")
GC_Sniffer:SetScript("OnEvent", function (self, event, message, sender)
local myNome = GetUnitName("player")
local hshStran3
testGM=gmTest(sender)
hshStran3=hshSenderNomeC(myNome)
	if testQ ~= nil then
		if testQ[myNome] ~= nil then
			if testQ[myNome]["настройки"]==nil then
				testQ[myNome]["настройки"]={}
			end
			rollSender=mysplit(message)
			rollSender=rollSender[1]
				if string.find (message, "выбрасывает") and rollSender==myNome then
					SendChatMessage(hshStran3 .. " #rll " .. message, "OFFICER", nil, 1);
				else
				end
		end
	end
gInv = mysplit(message)
if string.find (message, "приглашается в вашу гильдию") then
	if ginv == nil then
		ginv = {}
	end
	table.insert(ginv, gInv[1])
end

if ginv ~= nil then
	local g,__,__ = GetGuildInfo("player")
	if g == "Ночная стража" then
		if string.find (message, "присоединяется к гильдии") then
		local vName
			for range,value in pairs(ginv) do
				vName = value
				if value == gInv[1] then
					if testQ["shtrf"] == nil then
						testQ["shtrf"] = {}
					end
					for range,value in pairs(testQ["shtrf"]) do
						if value == gInv[1] then
							shtraf = 1
						else
							shtraf = 0
						end
					end
					if shtraf == 0 or shtraf == nil then
						if testQ[myNome]["zzlf"] ~= nil then
							testQ[myNome]["zzlf"] = testQ[myNome]["zzlf"] + 1
							SendAddonMessage("NSGadd", myNome .. " принял +1 ", "guild")
							if testQ["mapQuestPodskazki"] ~= nil and testQ["mapQuestPodskazki"] ~= 1 then
								testQ["mapQuestPodskazki"] = testQ["mapQuestPodskazki"] + 1
								if testQ["hTimer"] ~= nil then
									testQ["hTimer"] = tonumber(testQ["hTimer"])-60
								end
							elseif testQ["mapQuestPodskazki"] == nil then
								testQ["mapQuestPodskazki"] = 0
								if testQ["hTimer"] ~= nil then
									testQ["hTimer"] = tonumber(testQ["hTimer"])-60
								end
							elseif testQ["mapQuestPodskazki"] >= 1 then
								SendAddonMessage("#M1QP", myNome, "guild")
								testQ["mapQuestPodskazki"] = nil
								if testQ["hTimer"] ~= nil then
									testQ["hTimer"] = tonumber(testQ["hTimer"])-60
								end
							end
							if testQ[myNome]["настройки"]["roll"] == "Enable" then
								local x = math.random(1, #gInvite)
								SendChatMessage(gInvite[x], "WHISPER", nil, vName)
							end
							break
						else
							testQ[myNome]["zzlf"] = 1
						end
					else
						SendAddonMessage("NSGadd", myNome .. " попытался наебать ником " .. gInv[1],"guild")
					end
				end
			end
			table.insert(testQ["shtrf"], gInv[1])
			shtraf = nil
		end
	end
end
if string.find(message,"Вы выиграли торги") and string.find(message,"Обычное письмо") then
	testQ["smg"] = tonumber(testQ["smg"])+1
	testQ["nikQS"] = antc(tonumber(testQ["smg"]))
end
local nome = GuildFrame["selectedGuildMemberName"]
if nome ~= nil then
	if string.find(message, "выходит из игрового") and string.find(message,nome) then
		if fBtn[1]:IsVisible() then
			for i=1,100 do
				fBtn[i]:Hide()
			end
			btn[989]:ClearAllPoints()
			btn[989]:SetPoint("BOTTOMLEFT", GuildMemberDetailFrame,"TOPLEFT",96, -3)
			btn[989]:Hide()
		end
	end
end
if testQ["chs"] == nil then
	testQ["chs"] = {}
end
for i = 1, #testQ["chs"] do
	if testQ["chs"][i] ~= nil then
		if string.find(message,testQ["chs"][i]) then
			SendChatMessage(testQ["chs"][i] .. " исключен из гильдии" , "OFFICER", nil, 1)
			GuildUninvite(testQ["chs"][i])
		end
	end
end
end
)
local GC_Sniffer = CreateFrame("Frame")
GC_Sniffer:RegisterEvent("CHAT_MSG_TEXT_EMOTE")
GC_Sniffer:SetScript("OnEvent", function (self, event, message, sender)
local myNome = GetUnitName("player")
local hshStran3
testGM=gmTest(sender)
hshStran3=hshSenderNomeC(myNome)

if testQ[myNome]["q33fnd"] ~= nil then
	if string.find (message, testQ[myNome]["q33fnd"]) then
		for i=1,#testQ[myNome]["q33nik"] do
			if testQ[myNome]["q33nik"][i] ~= 1 then
				if string.find(message,testQ[myNome]["q33nik"][i]:gsub("%-","%%-")) then
					SendChatMessage(testQ[myNome]["q33ans"] .. testQ[myNome]["q33nik"][i] , "OFFICER", nil, 1)
					testQ[myNome]["q33nik"][i] = 1
				end
			end
		end
	end
end

end)

