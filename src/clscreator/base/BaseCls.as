package clscreator.base {

	/**
	 * all the class creator object 's super class 
	 * @author babyfaction
	 */	
    public class BaseCls {

		private static var NEW_LINE:String = "\r";
		
        public function BaseCls(){
            super();
        }
		
		/**
		 * the indent, will be override in the sub object 
		 * @return 
		 * 
		 */		
        public function getIndent():String{
            return "";
        }
		
		/**
		 * a Wrap Symbol, you can change it on different operation system(like mac osx, you can use "\r\n")
		 * @return 
		 */		
        public function getNewline():String{
            return NEW_LINE;
        }
		
		public static function setNewline(str:String):void{
			NEW_LINE = str;
		}

    }
}