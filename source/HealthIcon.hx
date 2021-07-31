package;

import flixel.FlxG;
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

		if(FlxG.save.data.antialiasing)
			{
				antialiasing = true;
			}
		if (char == 'sm')
		{
			loadGraphic(Paths.image("stepmania-icon"));
			return;
		}
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-neo', [20, 21], 0, false, isPlayer);
		animation.add('dad', [1, 2], 0, false, isPlayer);
		animation.add('gf', [2, 3], 0, false, isPlayer);
		animation.add('gf-neo', [2, 3], 0, false, isPlayer);
		animation.add('garcellodead', [4, 5], 0, false, isPlayer);
		animation.add('garcello', [10, 11], 0, false, isPlayer);
		animation.add('garcellotired', [12, 13], 0, false, isPlayer);
		animation.add('garcelloghosty', [14, 15], 0, false, isPlayer);
		animation.add('garcellodead', [4, 5], 0, false, isPlayer);
		animation.add('neo-garcello', [16, 17], 0, false, isPlayer);
		animation.add('neo-garcellotired', [18, 19], 0, false, isPlayer);
		animation.add('neo-garcelloghosty', [8, 9], 0, false, isPlayer);
		animation.add('neo-garcellodead', [6, 7], 0, false, isPlayer);
		animation.play(char);

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
