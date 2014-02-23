ClsCreator
==========

An ActionScript3 code generate lib


##hello world

```js
var cls:Cls = new Cls("HelloWorld", new Pack(""));
cls.setSuperClass(new SuperCls(Sprite));

var v:Var = new Var("tea", String);
cls.addPropertys(v);

var m:Method = new Method("hi", Method.VOID, Property.PUBLIC);
m.addStatement(new Statement("trace(\"hello, world\")"));

cls.addPropertys(m);
```

--output
```js
package 
{
	import flash.display.Sprite;
	public class HelloWorld extends Sprite
	{
		public var tea:String;
		public function hi():void
		{
			trace("hello, world")
		}
	}
}
```
