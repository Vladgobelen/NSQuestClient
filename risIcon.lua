--[[ Создание фрейма, который будет содержать текстуру иконки
iconFrame1 = CreateFrame("FRAME", "myAddonIconFrame", WorldMapFrame)
iconFrame1:SetSize(12, 12)
iconFrame1:SetPoint("BOTTOMLEFT")
-- Создание текстуры иконки
iconTexture1 = iconFrame1:CreateTexture("myAddonIcon", "OVERLAY")
iconTexture1:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
iconTexture1:SetSize(12, 12)
iconTexture1:SetPoint("BOTTOMLEFT", 0, 0)

--]]
iconRis={}
iconRisText={}
iconRisText2={}
tochki = {}
icN = 1
--1-16   17-32   33-48 49-64
function iconRis:configure(id,Rx,Ry)
	self[id] = self[id] or CreateFrame("FRAME", "myAddonIconFrame", WorldMapFrame)
	self[id]:SetSize(Rx, Ry)
	--self[id]:SetPoint("BOTTOMLEFT", WorldMapDetailFrame,"BOTTOMLEFT")
end

function iconRisText:configure(id,Rx,Ry,x,y,nRis)
	self[id] = iconRis[id]:CreateTexture("myAddonIcon", "OVERLAY")
	self[id]:SetTexture("Interface\\AddOns\\NSQC\\test\\" .. nRis ..".tga")
	self[id]:SetSize(Rx, Ry)
	self[id]:SetPoint("BOTTOMLEFT", WorldMapDetailFrame,"BOTTOMLEFT", x, y)
end

function iconRisText2:configure(id,Rx,Ry,x,y,nRis)
	self[id] = iconRis[id]:CreateTexture("myAddonIcon", "OVERLAY")
	self[id]:SetTexture("Interface\\AddOns\\NSQC\\test\\test2\\" .. nRis ..".tga")
	self[id]:SetSize(Rx, Ry)
	self[id]:SetPoint("TOPLEFT", WorldMapDetailFrame,"TOPLEFT", x, y)
end

--[[function mostraKrtM1x1(signalKrt)
	if signalKrt=="Show" then
		jj=20
		j=394
		for i=0,16 do
			iconRis:configure(i,545,350)
			iconRisText:configure(i,9.1,6,0,0,i)
			iconRis[i]:SetPoint("BOTTOMLEFT", jj, j)
			jj=jj+9.1
		end
		jj=20
		j=394-6
		for i=64,80 do
			iconRis:configure(i,545,350)
			iconRisText:configure(i,9.1,6,0,0,i)
			iconRis[i]:SetPoint("BOTTOMLEFT", jj, j)
			jj=jj+9.1
		end
	elseif signalKrt=="Hide" then
		for i=0,16 do
			iconRisText[i][signalKrt](iconRisText[i])
		end
		for i=64,80 do
			iconRisText[i][signalKrt](iconRisText[i])
		end
	end
end--]]

function mostraKrtM1x1(signalKrt,xx,yy,zz)

	if signalKrt=="Show" then
		ranges = {{1, 22}, {65, 86},{129,150},{193,214},{257,278},{321,342},{385,406},{449,470},{513,534},{577,598},{641,662},{705,726},{769,790}}
		--ranges = {{xx, yy}}
		j=422
		for range,value in pairs(ranges) do
			jj=333
			for rangeT=value[1],value[2] do
				iconRis:configure(rangeT,545,350)
				iconRis[rangeT]:SetFrameStrata("FULLSCREEN_DIALOG")
				iconRisText:configure(rangeT,8,12,jj,j,rangeT)
				iconRis[rangeT]:SetPoint("BOTTOMLEFT", WorldMapDetailFrame,"BOTTOMLEFT", jj, j)
				jj=jj+8
			end
			j=j-12
		end
	else
		ranges = {{1, 22}, {65, 86},{129,150},{193,214},{257,278},{321,342},{385,406},{449,470},{513,534},{577,598},{641,662},{705,726},{769,790}}
		for range,value in pairs(ranges) do
			for rangeT=value[1],value[2] do
				if iconRisText[rangeT] ~= nil then
					iconRisText[rangeT][signalKrt](iconRisText[rangeT])
				end
			end
		end
	end
end

function mostraKrtM1x2(signalKrt)

	if signalKrt=="Show" then
		ranges = {{23, 44}, {87, 108},{151,172},{215,236},{279,300},{343,364},{407,428},{471,492},{535,556},{599,620},{663,684},{727,748},{791,812}}
		j=422
		for range,value in pairs(ranges) do
			jj=509
			for rangeT=value[1],value[2] do
				iconRis:configure(rangeT,545,350)
				iconRis[rangeT]:SetFrameStrata("FULLSCREEN_DIALOG")
				iconRisText:configure(rangeT,8,12,jj,j,rangeT)
				iconRis[rangeT]:SetPoint("BOTTOMLEFT", WorldMapDetailFrame,"BOTTOMLEFT", jj, j)
				jj=jj+8
			end
			j=j-12
		end
	else
		ranges = {{23, 44}, {87, 108},{151,172},{215,236},{279,300},{343,364},{407,428},{471,492},{535,556},{599,620},{663,684},{727,748},{791,812}}
		for range,value in pairs(ranges) do
			for rangeT=value[1],value[2] do
				if iconRisText[rangeT] ~= nil then
					iconRisText[rangeT][signalKrt](iconRisText[rangeT])
				end
			end
		end
	end
end

function mostraKrtM1x3(signalKrt)

	if signalKrt=="Show" then
		ranges = {{45, 64}, {109, 128},{173,192},{237,256},{301,320},{365,384},{429,448},{493,512},{557,576},{621,640},{685,704},{749,768},{813,832}}
		j=422
		for range,value in pairs(ranges) do
			jj=685
			for rangeT=value[1],value[2] do
				iconRis:configure(rangeT,545,350)
				iconRis[rangeT]:SetFrameStrata("FULLSCREEN_DIALOG")
				iconRisText:configure(rangeT,8,12,jj,j,rangeT)
				iconRis[rangeT]:SetPoint("BOTTOMLEFT", WorldMapDetailFrame,"BOTTOMLEFT", jj, j)
				jj=jj+8
			end
			j=j-12
		end
	else
		ranges = {{45, 64}, {109, 128},{173,192},{237,256},{301,320},{365,384},{429,448},{493,512},{557,576},{621,640},{685,704},{749,768},{813,832}}
		for range,value in pairs(ranges) do
			for rangeT=value[1],value[2] do
				if iconRisText[rangeT] ~= nil then
					iconRisText[rangeT][signalKrt](iconRisText[rangeT])
				end
			end
		end
	end
end

function mostraKrtM2x1(signalKrt)

	if signalKrt=="Show" then
		ranges = {{833, 854},{897,918},{961,982},{1025,1046},{1089,1110},{1153,1174},{1217,1238},{1281,1302},{1345,1366},{1409,1430},{1473,1494},{1537,1558},{1601,1622}}
		--ranges = {{769,832}}
		j=266
		for range,value in pairs(ranges) do
			jj=333
			for rangeT=value[1],value[2] do
				iconRis:configure(rangeT,545,350)
				iconRis[rangeT]:SetFrameStrata("FULLSCREEN_DIALOG")
				iconRisText:configure(rangeT,8,12,jj,j,rangeT)
				iconRis[rangeT]:SetPoint("BOTTOMLEFT", WorldMapDetailFrame,"BOTTOMLEFT", jj, j)
				jj=jj+8
			end
			j=j-12
		end
	else
		ranges = {{833, 854},{897,918},{961,982},{1025,1046},{1089,1110},{1153,1174},{1217,1238},{1281,1302},{1345,1366},{1409,1430},{1473,1494},{1537,1558},{1601,1622}}
		for range,value in pairs(ranges) do
			for rangeT=value[1],value[2] do
				if iconRisText[rangeT] ~= nil then
					iconRisText[rangeT][signalKrt](iconRisText[rangeT])
				end
			end
		end
	end
end

function mostraKrtM2x2(signalKrt)

	if signalKrt=="Show" then
		ranges = {{855, 876},{919,940},{983,1004},{1047,1068},{1111,1132},{1175,1196},{1239,1260},{1303,1324},{1367,1388},{1431,1452},{1495,1516},{1559,1580},{1623,1644}}
		--ranges = {{769,832}}
		j=266
		for range,value in pairs(ranges) do
			jj=509
			for rangeT=value[1],value[2] do
				iconRis:configure(rangeT,545,350)
				iconRis[rangeT]:SetFrameStrata("FULLSCREEN_DIALOG")
				iconRisText:configure(rangeT,8,12,jj,j,rangeT)
				iconRis[rangeT]:SetPoint("BOTTOMLEFT", WorldMapDetailFrame,"BOTTOMLEFT", jj, j)
				jj=jj+8
			end
			j=j-12
		end
	else
		ranges = {{855, 876},{919,940},{983,1004},{1047,1068},{1111,1132},{1175,1196},{1239,1260},{1303,1324},{1367,1388},{1431,1452},{1495,1516},{1559,1580},{1623,1644}}
		for range,value in pairs(ranges) do
			for rangeT=value[1],value[2] do
				if iconRisText[rangeT] ~= nil then
					iconRisText[rangeT][signalKrt](iconRisText[rangeT])
				end
			end
		end
	end
end

function mostraKrtM2x3(signalKrt)

	if signalKrt=="Show" then
		ranges = {{877, 896},{941,960},{1005,1024},{1069,1088},{1133,1152},{1197,1216},{1261,1280},{1325,1344},{1389,1408},{1453,1472},{1517,1536},{1581,1600},{1645,1664}}
		--ranges = {{769,832}}
		j=266
		for range,value in pairs(ranges) do
			jj=685
			for rangeT=value[1],value[2] do
				iconRis:configure(rangeT,545,350)
				iconRis[rangeT]:SetFrameStrata("FULLSCREEN_DIALOG")
				iconRisText:configure(rangeT,8,12,jj,j,rangeT)
				iconRis[rangeT]:SetPoint("BOTTOMLEFT", WorldMapDetailFrame,"BOTTOMLEFT", jj, j)
				jj=jj+8
			end
			j=j-12
		end
	else
		ranges = {{877, 896},{941,960},{1005,1024},{1069,1088},{1133,1152},{1197,1216},{1261,1280},{1325,1344},{1389,1408},{1453,1472},{1517,1536},{1581,1600},{1645,1664}}
		for range,value in pairs(ranges) do
			for rangeT=value[1],value[2] do
				if iconRisText[rangeT] ~= nil then
					iconRisText[rangeT][signalKrt](iconRisText[rangeT])
				end
			end
		end
	end
end

function mostraKrtM3x1(signalKrt)

	if signalKrt=="Show" then
		ranges = {{1665,1686},{1729,1750},{1793,1814},{1857,1878},{1921,1942},{1985,2006},{2049,2070},{2113,2134},{2177,2198},{2241,2262},{2305,2326},{2369,2390},{2433,2454}}
		--ranges = {{769,832}}
		j=110
		for range,value in pairs(ranges) do
			jj=333
			for rangeT=value[1],value[2] do
				iconRis:configure(rangeT,545,350)
				iconRis[rangeT]:SetFrameStrata("FULLSCREEN_DIALOG")
				iconRisText:configure(rangeT,8,12,jj,j,rangeT)
				iconRis[rangeT]:SetPoint("BOTTOMLEFT", WorldMapDetailFrame,"BOTTOMLEFT", jj, j)
				jj=jj+8
			end
			j=j-12
		end
	else
		ranges = {{1665,1686},{1729,1750},{1793,1814},{1857,1878},{1921,1942},{1985,2006},{2049,2070},{2113,2134},{2177,2198},{2241,2262},{2305,2326},{2369,2390},{2433,2454}}
		for range,value in pairs(ranges) do
			for rangeT=value[1],value[2] do
				if iconRisText[rangeT] ~= nil then
					iconRisText[rangeT][signalKrt](iconRisText[rangeT])
				end
			end
		end
	end
end

function mostraKrtM3x2(signalKrt)

	if signalKrt=="Show" then
		ranges = {{1687,1708},{1751,1772},{1815,1836},{1879,1900},{1943,1964},{2007,2028},{2071,2092},{2135,2156},{2199,2220},{2263,2284},{2327,2348},{2391,2412},{2455,2476}}
		--ranges = {{769,832}}
		j=110
		for range,value in pairs(ranges) do
			jj=509
			for rangeT=value[1],value[2] do
				iconRis:configure(rangeT,545,350)
				iconRis[rangeT]:SetFrameStrata("FULLSCREEN_DIALOG")
				iconRisText:configure(rangeT,8,12,jj,j,rangeT)
				iconRis[rangeT]:SetPoint("BOTTOMLEFT", WorldMapDetailFrame,"BOTTOMLEFT", jj, j)
				jj=jj+8
			end
			j=j-12
		end
	else
		ranges = {{1687,1708},{1751,1772},{1815,1836},{1879,1900},{1943,1964},{2007,2028},{2071,2092},{2135,2156},{2199,2220},{2263,2284},{2327,2348},{2391,2412},{2455,2476}}
		for range,value in pairs(ranges) do
			for rangeT=value[1],value[2] do
				if iconRisText[rangeT] ~= nil then
					iconRisText[rangeT][signalKrt](iconRisText[rangeT])
				end
			end
		end
	end
end

function mostraKrtM3x3(signalKrt)

	if signalKrt=="Show" then
		ranges = {{1709,1728},{1773,1792},{1837,1856},{1901,1920},{1965,1984},{2029,2048},{2093,2112},{2157,2176},{2221,2240},{2285,2304},{2349,2368},{2413,2432},{2477,2496}}
		--ranges = {{769,832}}
		j=110
		for range,value in pairs(ranges) do
			jj=685
			for rangeT=value[1],value[2] do
				iconRis:configure(rangeT,545,350)
				iconRis[rangeT]:SetFrameStrata("FULLSCREEN_DIALOG")
				iconRisText:configure(rangeT,8,12,jj,j,rangeT)
				iconRis[rangeT]:SetPoint("BOTTOMLEFT", WorldMapDetailFrame,"BOTTOMLEFT", jj, j)
				jj=jj+8
			end
			j=j-12
		end
	else
		ranges = {{1709,1728},{1773,1792},{1837,1856},{1901,1920},{1965,1984},{2029,2048},{2093,2112},{2157,2176},{2221,2240},{2285,2304},{2349,2368},{2413,2432},{2477,2496}}
		for range,value in pairs(ranges) do
			for rangeT=value[1],value[2] do
				if iconRisText[rangeT] ~= nil then
					iconRisText[rangeT][signalKrt](iconRisText[rangeT])
				end
			end
		end
	end
end

function mostraKrtM4x1(signalKrt)

	if signalKrt=="Show" then
		ranges = {{2497,2518},{2561,2582},{2625,2646},{2689,2710},{2753,2774},{2817,2838},{2881,2902},{2945,2966},{3009,3030},{3073,3094},{3137,3158},{3201,3222},{3265,3286}}
		--ranges = {{2305,2368}}
		j=-46
		for range,value in pairs(ranges) do
			jj=333
			for rangeT=value[1],value[2] do
				iconRis:configure(rangeT,545,350)
				iconRis[rangeT]:SetFrameStrata("FULLSCREEN_DIALOG")
				iconRisText:configure(rangeT,8,12,jj,j,rangeT)
				iconRis[rangeT]:SetPoint("BOTTOMLEFT", WorldMapDetailFrame,"BOTTOMLEFT", jj, j)
				jj=jj+8
			end
			j=j-12
		end
	else
		ranges = {{2497,2518},{2561,2582},{2625,2646},{2689,2710},{2753,2774},{2817,2838},{2881,2902},{2945,2966},{3009,3030},{3073,3094},{3137,3158},{3201,3222},{3265,3286}}
		--ranges = {{2305,2368}}
		for range,value in pairs(ranges) do
			for rangeT=value[1],value[2] do
				if iconRisText[rangeT] ~= nil then
					iconRisText[rangeT][signalKrt](iconRisText[rangeT])
				end
			end
		end
	end
end

function mostraKrtM4x2(signalKrt)

	if signalKrt=="Show" then
		ranges = {{2519,2540},{2583,2604},{2647,2668},{2711,2732},{2775,2796},{2839,2860},{2903,2924},{2967,2988},{3031,3052},{3095,3116},{3159,3180},{3223,3244},{3287,3308}}
		--ranges = {{2305,2368}}
		j=-46
		for range,value in pairs(ranges) do
			jj=509
			for rangeT=value[1],value[2] do
				iconRis:configure(rangeT,545,350)
				iconRis[rangeT]:SetFrameStrata("FULLSCREEN_DIALOG")
				iconRisText:configure(rangeT,8,12,jj,j,rangeT)
				iconRis[rangeT]:SetPoint("BOTTOMLEFT", WorldMapDetailFrame,"BOTTOMLEFT", jj, j)
				jj=jj+8
			end
			j=j-12
		end
	else
		ranges = {{2519,2540},{2583,2604},{2647,2668},{2711,2732},{2775,2796},{2839,2860},{2903,2924},{2967,2988},{3031,3052},{3095,3116},{3159,3180},{3223,3244},{3287,3308}}
		--ranges = {{2305,2368}}
		for range,value in pairs(ranges) do
			for rangeT=value[1],value[2] do
				if iconRisText[rangeT] ~= nil then
					iconRisText[rangeT][signalKrt](iconRisText[rangeT])
				end
			end
		end
	end
end

function mostraKrtM4x3(signalKrt)

	if signalKrt=="Show" then
		ranges = {{2541,2560},{2605,2624},{2669,2688},{2733,2752},{2797,2816},{2861,2880},{2925,2944},{2989,3008},{3053,3072},{3117,3136},{3181,3200},{3245,3264},{3309,3328}}
		--ranges = {{2305,2368}}
		j=-46
		for range,value in pairs(ranges) do
			jj=685
			for rangeT=value[1],value[2] do
				iconRis:configure(rangeT,545,350)
				iconRis[rangeT]:SetFrameStrata("FULLSCREEN_DIALOG")
				iconRisText:configure(rangeT,8,12,jj,j,rangeT)
				iconRis[rangeT]:SetPoint("BOTTOMLEFT", WorldMapDetailFrame,"BOTTOMLEFT", jj, j)
				jj=jj+8
			end
			j=j-12
		end
	else
		ranges = {{2541,2560},{2605,2624},{2669,2688},{2733,2752},{2797,2816},{2861,2880},{2925,2944},{2989,3008},{3053,3072},{3117,3136},{3181,3200},{3245,3264},{3309,3328}}
		--ranges = {{2305,2368}}
		for range,value in pairs(ranges) do
			for rangeT=value[1],value[2] do
				if iconRisText[rangeT] ~= nil then
					iconRisText[rangeT][signalKrt](iconRisText[rangeT])
				end
			end
		end
	end
end

function mostraKrtM5x1(signalKrt)

	if signalKrt=="Show" then
		ranges = {{3329,3350},{3393,3414},{3457,3478},{3521,3542},{3585,3606},{3649,3670},{3713,3734},{3777,3798},{3841,3862},{3905,3926},{3969,3990},{4033,4054},{4097,4118}}
		--ranges = {{2305,2368}}
		j=-202
		for range,value in pairs(ranges) do
			jj=333
			for rangeT=value[1],value[2] do
				iconRis:configure(rangeT,545,350)
				iconRis[rangeT]:SetFrameStrata("FULLSCREEN_DIALOG")
				iconRisText:configure(rangeT,8,12,jj,j,rangeT)
				iconRis[rangeT]:SetPoint("BOTTOMLEFT", WorldMapDetailFrame,"BOTTOMLEFT", jj, j)
				jj=jj+8
			end
			j=j-12
		end
	else
		ranges = {{3329,3350},{3393,3414},{3457,3478},{3521,3542},{3585,3606},{3649,3670},{3713,3734},{3777,3798},{3841,3862},{3905,3926},{3969,3990},{4033,4054},{4097,4118}}
		--ranges = {{2305,2368}}
		for range,value in pairs(ranges) do
			for rangeT=value[1],value[2] do
				if iconRisText[rangeT] ~= nil then
					iconRisText[rangeT][signalKrt](iconRisText[rangeT])
				end
			end
		end
	end
end

function mostraKrtM5x2(signalKrt)

	if signalKrt=="Show" then
		ranges = {{3351,3372},{3415,3436},{3479,3500},{3543,3564},{3607,3628},{3671,3692},{3735,3756},{3799,3820},{3863,3884},{3927,3948},{3991,4012},{4055,4076},{4119,4140}}
		--ranges = {{2305,2368}}
		j=-202
		for range,value in pairs(ranges) do
			jj=509
			for rangeT=value[1],value[2] do
				iconRis:configure(rangeT,545,350)
				iconRis[rangeT]:SetFrameStrata("FULLSCREEN_DIALOG")
				iconRisText:configure(rangeT,8,12,jj,j,rangeT)
				iconRis[rangeT]:SetPoint("BOTTOMLEFT", WorldMapDetailFrame,"BOTTOMLEFT", jj, j)
				jj=jj+8
			end
			j=j-12
		end
	else
		ranges = {{3351,3372},{3415,3436},{3479,3500},{3543,3564},{3607,3628},{3671,3692},{3735,3756},{3799,3820},{3863,3884},{3927,3948},{3991,4012},{4055,4076},{4119,4140}}
		--ranges = {{2305,2368}}
		for range,value in pairs(ranges) do
			for rangeT=value[1],value[2] do
				if iconRisText[rangeT] ~= nil then
					iconRisText[rangeT][signalKrt](iconRisText[rangeT])
				end
			end
		end
	end
end

function mostraKrtM5x3(signalKrt)

	if signalKrt=="Show" then
		ranges = {{3373,3392},{3437,3456},{3501,3520},{3565,3584},{3629,3648},{3693,3712},{3757,3776},{3821,3840},{3885,3904},{3949,3968},{4013,4032},{4077,4096}}
		--ranges = {{2305,2368}}
		j=-202
		for range,value in pairs(ranges) do
			jj=685
			for rangeT=value[1],value[2] do
				iconRis:configure(rangeT,545,350)
				iconRis[rangeT]:SetFrameStrata("FULLSCREEN_DIALOG")
				iconRisText:configure(rangeT,8,12,jj,j,rangeT)
				iconRis[rangeT]:SetPoint("BOTTOMLEFT", WorldMapDetailFrame,"BOTTOMLEFT", jj, j)
				jj=jj+8
			end
			j=j-12
		end
	else
		ranges = {{3373,3392},{3437,3456},{3501,3520},{3565,3584},{3629,3648},{3693,3712},{3757,3776},{3821,3840},{3885,3904},{3949,3968},{4013,4032},{4077,4096}}
		--ranges = {{2305,2368}}
		for range,value in pairs(ranges) do
			for rangeT=value[1],value[2] do
				if iconRisText[rangeT] ~= nil then
					iconRisText[rangeT][signalKrt](iconRisText[rangeT])
				end
			end
		end
	end
end




ranges1 = {{1, 16}, {65, 80},{129,144},{193,208},{257,272},{321,336},{385,400},{449,464},{513,528},{577,592},{641,656},{705,720},{769,784},{833,848},{897,912},{961,976}}
ranges2 = {{17, 32}, {81, 96},{145,160},{209,224},{273,288},{337,352},{401,416},{465,480},{529,544},{593,608},{657,672},{721,736},{785,800},{849,864},{913,928},{977,992}}
ranges3 = {{33, 48}, {97, 112},{161,176},{225,240},{289,304},{353,368},{417,432},{481,496},{545,560},{609,624},{673,688},{737,752},{801,816},{865,880},{929,944},{993,1008}}
ranges4 = {{49, 64}, {113, 128},{177,192},{241,256},{305,320},{369,384},{433,448},{497,512},{561,576},{625,640},{689,704},{753,768},{817,832},{881,896},{945,960},{1009,1024}}

function mostraKrtM(signalKrt,R,Xm,Ym)
	if signalKrt=="Show" then
		j=Ym
		for range,value in pairs(R) do
			jj=Xm
			for rangeT=value[1],value[2] do
				iconRis:configure(rangeT,576,384)
				iconRis[rangeT]:SetFrameStrata("MEDIUM")
				iconRisText2:configure(rangeT,9,6,jj,j,rangeT)
				iconRis[rangeT]:SetPoint("TOPLEFT", WorldMapDetailFrame,"TOPLEFT", jj, j)
				jj=jj+9
			end
			j=j-6
		end
	else
		for range,value in pairs(R) do
			for rangeT=value[1],value[2] do
				if iconRisText2[rangeT] ~= nil then
					iconRisText2[rangeT][signalKrt](iconRisText2[rangeT])
				end
			end
		end
	end
end
function mostraKrtMF(signalKrt,R,Xm,Ym)
	if signalKrt=="Show" then
		j=Ym
		for range,value in pairs(R) do
			jj=Xm
			for rangeT=value[1],value[2] do
				iconRis:configure(rangeT,576,384)
				iconRis[rangeT]:SetFrameStrata("MEDIUM")
				iconRisText2:configure(rangeT,15.7,10.45,jj,j,rangeT)
				iconRis[rangeT]:SetPoint("TOPLEFT", WorldMapDetailFrame,"TOPLEFT", jj, j)
				jj=jj+15.7
			end
			j=j-10.45
		end
	else
		for range,value in pairs(R) do
			for rangeT=value[1],value[2] do
				if iconRisText2[rangeT] ~= nil then
					iconRisText2[rangeT][signalKrt](iconRisText2[rangeT])
				end
			end
		end
	end
end

function regRange(R)
	rangeGen = {}
	for i = 1, 16 do
		R2 = R + 15
		table.insert(rangeGen, {R, R2})
		R = R + 64
	end
	return rangeGen
end

function mostraKrtM111x111(signalKrt)
	if signalKrt=="Show" then
		iconRis:configure(999999,545,350)
		iconRis[999999]:SetFrameStrata("FULLSCREEN")
		iconRisText:configure(999999,522,767,333,-333,999999)
		iconRis[999999]:SetPoint("BOTTOMLEFT", WorldMapFrame,"BOTTOMLEFT", 1, -333)
	else
		if iconRisText[999999] ~= nil then
			iconRisText[999999][signalKrt](iconRisText[999999])
		end
	end
end

function mostraKrtM222x222(signalKrt)
	if signalKrt=="Show" then
		iconRis:configure(999999,545,350)
		iconRis[999999]:SetFrameStrata("FULLSCREEN")
		iconRisText2:configure(999999,576,384,0,0,999999)
		iconRis[999999]:SetPoint("TOPLEFT", WorldMapFrame,"TOPLEFT", 1, -333)
	else
		if iconRisText[999999] ~= nil then
			iconRisText[999999][signalKrt](iconRisText[999999])
		end
	end
end
--/run mostraKrtl2("Show",1,1,574,384,400,8)
--for i=1,100000 do if iconRisText[i] ~= nil then iconRisText[i]:Hide() end end
function mostraKrtl1(signalKrt,X0,Y0,X1,Y1,S,S1)
    if signalKrt=="Show" then
        tochki[icN] = true
        iconRis:configure(icN,545,350)
        iconRisText:configure(icN,8,8,1,1,121212)
        iconRisText[icN]:SetPoint("BOTTOMLEFT", WorldMapFrame,"BOTTOMLEFT", 425, 387)
        local x0 = X0
        local y0 = Y0
        local x1 = X1
        local y1 = Y1

        local dx = x1 - x0
        local dy = y1 - y0


        local i0 = 1
        local i1 = S
        local step = S1
        local stepCount = (i1 - i0) / step


        dirX = dx / stepCount
        dirY = dy / stepCount


        local resX = x0
        local resY = y0
        for i=i0,i1*1.8,step do
            icN = icN+i
            tochki[icN] = true
            resX = resX + dirX
            resY = resY + dirY
            iconRis:configure(icN,resX,resY)
            iconRisText:configure(icN,8,8,1,1,121212)
            iconRis[icN]:SetFrameStrata("TOOLTIP")
            iconRisText[icN]:SetPoint("BOTTOMLEFT", WorldMapFrame,"BOTTOMLEFT", resX, resY)

		end
    else
        iconRisText[icN][signalKrt](iconRisText[icN])
    end
end




function mostraKrtl2(signalKrt,X0,Y0,X1,Y1,S,S1,diametr)
    if signalKrt=="Show" then
		icN = icN+9999999
        tochki[icN] = true
        iconRis:configure(icN,576,384)
        iconRisText:configure(icN,diametr,diametr,X0,Y0,121212)
        local x0 = X0
        local y0 = Y0
        local x1 = X1
        local y1 = Y1

        local dx = x1 - x0
        local dy = y1 - y0


        local i0 = 1
        local i1 = S
        local step = S1
        local stepCount = (i1 - i0) / step


        dirX = dx / stepCount
        dirY = dy / stepCount


        local resX = x0
        local resY = y0
        for i=i0,i1,step do
            icN = icN+i
            tochki[icN] = true
            resX = resX + dirX
            resY = resY + dirY
            iconRis:configure(icN,resX,resY)
            iconRisText:configure(icN,diametr,diametr,1,1,121212)
            iconRis[icN]:SetFrameStrata("TOOLTIP")
            iconRisText[icN]:SetPoint("BOTTOMLEFT", WorldMapFrame,"BOTTOMLEFT", resX, resY)

		end
    else
        iconRisText[icN][signalKrt](iconRisText[icN])
    end
end






--[[
iRis=1
local UpdateSpeed = 1
local fRis = CreateFrame("Frame")
fRis.Text1 = fRis:CreateFontString()

fRis.UpdateSpeed = UpdateSpeed
fRis:SetScript("OnUpdate", function(self, elapsed)
	self.UpdateSpeed = self.UpdateSpeed - elapsed
	if self.UpdateSpeed > 0 then
		return
	end

	self.UpdateSpeed = UpdateSpeed
	mioKontRis,mioLokRis,mioXRis,mioYRis=Astrolabe:GetCurrentPlayerPosition()
	XXXRis,YYYRis=getPOS(mioXRis,mioYRis)

	iconRis:configure(iRis,128,128)
	iconRisText:configure(iRis,128,128,0,0)
	iconRis[iRis]:SetPoint("BOTTOMLEFT", XXXRis, YYYRis)
	iconRis[iRis]:Show()
	iRis=iRis+1

end)
--]]
