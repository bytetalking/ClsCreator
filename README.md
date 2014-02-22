ClsCreator
==========

An ActionScript code generate lib


hello world
----------
var cls:Cls = new Cls("HelloWorld", new Pack(""));
cls.setSuperClass(new SuperCls(Sprite));

var m:Method = new Method("hi", Method.VOID, Cls.PUBLIC);
m.addStatement(new Statement("trace(\"hello, world\")"));

cls.addPropertys(m);

trace(cls.toString());

--output
package 
{
	import flash.display.Sprite;
	public class HelloWorld extends Sprite
	{
		public function hi():void
		{
			trace("hello, world")
		}
	}
}
