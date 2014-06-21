package clscreator.base {

	/**
	 * all the class creator object 's super class 
	 * @author babyfaction
	 */	
    public class BaseCls {

		public static var NEW_LINE:String = "\r";
		
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
		
		public static function setNewline(str:String):void{
			NEW_LINE = str;
		}

    }
}