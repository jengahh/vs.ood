package;
import flixel.FlxSprite;
import flixel.*;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;

class WarningState extends FlxState
{

	public function new() 
	{
		super();
	}
	
	override public function create():Void 
	{
		super.create();
		
		
		var warning:FlxSprite = new FlxSprite(0, 0);
		warning.loadGraphic("assets/images/warning.png", false, 1280, 720);
		add(warning);
	}
	public override function update(elapsed){
		
		
		if (FlxG.keys.justPressed.ENTER){
			FlxG.switchState(new Warning2());
		}
		if (FlxG.keys.justPressed.BACKSPACE){
			FlxG.switchState(new Warning2());
		}
		super.update(elapsed);
	}
	
}