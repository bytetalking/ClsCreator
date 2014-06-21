package clscreator {
    import clscreator.base.*;

	/**
	 * Variable
	 * @author babyfaction
	 */	
    public class Var extends Property {

        private static const Mark:String = "var";

        private var defaultValue:Object;
        private var isConst:Boolean = false;
        private var comment:Comment;

        public function Var(name:String, returnType:Object, defaultValue:Object=null, type:String="public", isStatic:Boolean=false){
            super(name, returnType, type, isStatic);
            setDefaultValue(defaultValue);
        }
		
		public function setComment(c:Comment):void{
			this.comment = c;
		}
		
        public function setDefaultValue(v:Object):void{
            this.defaultValue = v;
        }
        public function getDefaultValue():String{
            if (this.getReturnType() == "String"){
                return "\"" + this.defaultValue.toString() + "\"";
            };
            return this.defaultValue.toString();
        }
        public function setConst(c:Boolean):void{
            this.isConst = c;
        }
        override public function toString():String{
            var str:String = "";
			
			if(this.comment) str += this.getIndent() + this.comment + BaseCls.NEW_LINE;
				
			str += this.getIndent();
            str += this.getType() + " ";
            str += this.isStatic ? "static " : "";
            str += this.isConst ? "const " : "";
            str += Mark + " " + this.getPropertyName() + ":" + this.getShortReturnType();
            if (this.defaultValue){
                str += " = " + getDefaultValue();
            };
            return str + ";" + BaseCls.NEW_LINE;
        }

    }
}