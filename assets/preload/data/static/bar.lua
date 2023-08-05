function onCreate()
	
	if downscroll == true then 
		makeLuaText('watermark',"Opt by WALKAY", 0, 0, 0);
	else
        makeLuaText('watermark',"Port by X-Sunset & Opt by WALKAY", 0, 0, 0); 
	end
	
    setTextSize('watermark', 20);
    addLuaText('watermark');
	setTextFont('watermark', 'vcr.ttf');
	setProperty('watermark', getColorFromHex('0407bf'))
end