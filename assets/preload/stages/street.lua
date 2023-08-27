function onCreate()
	-- background shit
	makeLuaSprite('april_bg_1', 'april_bg_1', -1900, -350);
	setScrollFactor('april_bg_1', 0.4, 0.4);
	scaleObject('april_bg_1', 1.1, 1.1);
	
	makeLuaSprite('april_bg_2', 'april_bg_2', -1750, -400);
	setScrollFactor('april_bg_2', 1, 1);
	scaleObject('april_bg_2', 1, 1);

	makeLuaSprite('april_bg_3', 'april_bg_3', -1750, -400);
	setScrollFactor('april_bg_3', 1, 1);
	scaleObject('april_bg_3', 1, 1);

	makeLuaSprite('april_bg_4', 'april_bg_4', -1750, -400);
	setScrollFactor('april_bg_4', 1, 1);
	scaleObject('april_bg_4', 1, 1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		setScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('april_bg_1', false);
	addLuaSprite('april_bg_2', false);
	addLuaSprite('april_bg_3', false);
	addLuaSprite('april_bg_4', false);
	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end