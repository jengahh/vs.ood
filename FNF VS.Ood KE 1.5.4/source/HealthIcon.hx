package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

	loadGraphic(Paths.image('iconGrid'), true, 150, 150);


		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-rat', [0, 1], 0, false, isPlayer);
		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('bf-special', [0, 1], 0, false, isPlayer);
		animation.add('pasu', [10,11], 0, false, isPlayer);
		animation.add('rattatui', [6,7], 0, false, isPlayer);
		animation.add('mamafrog', [17,17], 0, false, isPlayer);
		animation.add('ood', [13, 13], 0, false, isPlayer);
		animation.add('ood4p', [19, 19], 0, false, isPlayer);
		animation.add('ood5p', [14, 15], 0, false, isPlayer);
		animation.add('oodpurgation', [24, 25], 0, false, isPlayer);
		animation.add('dadood', [12, 13], 0, false, isPlayer);
		animation.add('dadood1p', [12, 13], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);
		animation.play(char);
		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
