package clscreator
{
	import clscreator.base.BaseCls;
	
	
	/**
	 * 注释
	 * @author babyfaction@qq.com
	 * */
	public class Comment extends BaseCls
	{
		private var content:String;
		public function Comment(c:String, addPack:Boolean = false)
		{
			super();
			if(addPack){
				content = "/**" + c + "**/";
			}else{
				content = c;
			}
		}
		
		public function toString():String{
			return content;
		}
	}
}