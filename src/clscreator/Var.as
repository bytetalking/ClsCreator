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

        public function Var(name:String, returnType:Object, defaultValue:Object=null, type:String="public", isStatic:Boolean=false){
            super(name, returnType, type, isStatic);
            setDefaultValue(defaultValue);
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
            var str:String = this.getIndent();
            str += this.getType() + " ";
            str += this.isStatic ? "static " : "";
            str += this.isConst ? "const " : "";
            str += Mark + " " + this.getPropertyName() + ":" + this.getShortReturnType();
            if (this.defaultValue){
                str += " = " + getDefaultValue();
            };
            return str + ";" + this.getNewline();
        }

    }
}