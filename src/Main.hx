package;

import openfl.Assets;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.geom.Rectangle;
import openfl.text.TextField;
import openfl.text.TextFieldAutoSize;

/**
 * ...
 * @author Spider
 */
class Main extends Sprite 
{
	private var _bmp:BitmapData;
	private var _positive:Sprite;
	private var _negative:Sprite;
	private var _positiveScale9Grid:Sprite;
	private var _negativeScale9Grid:Sprite;
	
	private var _positiveLabel:TextField;
	private var _negativeLabel:TextField;
	private var _positiveScale9GridLabel:TextField;
	private var _negativeScale9GridLabel:TextField;
	

	public function new() 
	{
		super();
		
		_bmp = Assets.getBitmapData("img/MouseOver_BG.png");
		
		_positive = new Sprite();
		_positive.graphics.beginBitmapFill(_bmp);
		_positive.graphics.drawRect(0, 0, _bmp.width, _bmp.height);
		_positive.graphics.endFill();
		_positive.scaleX = 1;
		_positive.y = 50;
		addChild(_positive);
		
		_negative = new Sprite();
		_negative.graphics.beginBitmapFill(_bmp);
		_negative.graphics.drawRect(0, 0, _bmp.width, _bmp.height);
		_negative.graphics.endFill();
		_negative.scaleX = -1;
		_negative.x = 400;
		_negative.y = 50;
		addChild(_negative);
		
		_positiveScale9Grid = new Sprite();
		_positiveScale9Grid.graphics.beginBitmapFill(_bmp);
		_positiveScale9Grid.graphics.drawRect(0, 0, _bmp.width, _bmp.height);
		_positiveScale9Grid.graphics.endFill();
		_positiveScale9Grid.scale9Grid = new Rectangle(4, 5, _bmp.width - 15, _bmp.height - 10);
		_positiveScale9Grid.scaleX = 1;
		_positiveScale9Grid.y = 300;
		addChild(_positiveScale9Grid);
		
		_negativeScale9Grid = new Sprite();
		_negativeScale9Grid.graphics.beginBitmapFill(_bmp);
		_negativeScale9Grid.graphics.drawRect(0, 0, _bmp.width, _bmp.height);
		_negativeScale9Grid.graphics.endFill();
		_negativeScale9Grid.scale9Grid = new Rectangle(4, 5, _bmp.width - 15, _bmp.height - 10);
		_negativeScale9Grid.scaleX = -1;
		_negativeScale9Grid.x = 400;
		_negativeScale9Grid.y = 300;
		addChild(_negativeScale9Grid);
		
		_positiveLabel = new TextField();
		_positiveLabel.textColor = 0xffffff;
		_positiveLabel.autoSize = TextFieldAutoSize.LEFT;
		_positiveLabel.text = "scale9Grid not set, scaleX = 1";
		addChild(_positiveLabel);
		
		_negativeLabel = new TextField();
		_negativeLabel.textColor = 0xffffff;
		_negativeLabel.autoSize = TextFieldAutoSize.LEFT;
		_negativeLabel.text = "scale9Grid not set, scaleX = -1";
		_negativeLabel.x = 300;
		addChild(_negativeLabel);
		
		_positiveScale9GridLabel = new TextField();
		_positiveScale9GridLabel.textColor = 0xffffff;
		_positiveScale9GridLabel.autoSize = TextFieldAutoSize.LEFT;
		_positiveScale9GridLabel.text = "scale9Grid is set, scaleX = 1";
		_positiveScale9GridLabel.y = 250;
		addChild(_positiveScale9GridLabel);
		
		_negativeScale9GridLabel = new TextField();
		_negativeScale9GridLabel.textColor = 0xffffff;
		_negativeScale9GridLabel.autoSize = TextFieldAutoSize.LEFT;
		_negativeScale9GridLabel.text = "scale9Grid is set, scaleX = -1";
		_negativeScale9GridLabel.x = 300;
		_negativeScale9GridLabel.y = 250;
		addChild(_negativeScale9GridLabel);
	}

}
