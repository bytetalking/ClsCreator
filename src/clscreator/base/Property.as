package clscreator.base {
    import flash.utils.*;

	/**
	 * Property, the Var and Method 's SuperClass
	 * @author babyfaction
	 */
    public class Property extends BaseCls {

        public static const PRIVATE:String = "private";
        public static const PUBLIC:String = "public";
        public static const INTERNAL:String = "internal";
        public static const PROTECTED:String = "protected";

        private var shortReturnType:String;
        private var returnType:String;
        protected var isStatic:Boolean = false;
        private var type:String;
        private var pname:String;

        public function Property(name:String, returnType:Object, type:String="public", isStatic:Boolean=false){
            var a:Array;
            super();
            setPropertyName(name);
            if (returnType is Class){
                a = getQualifiedClassName(returnType).split("::");
                setReturnType(a.join("."));
                setShortReturnType(a.pop());
            } else {
                setReturnType(String(returnType));
                setShortReturnType(String(returnType));
            };
            setType(type);
            setStatic(isStatic);
        }
        public function getReturnType():String{
            return this.returnType;
        }
        public function setPropertyName(name:String):void{
            this.pname = name;
        }
        public function setReturnType(rt:String):void{
            this.returnType = rt;
        }
        public function getPropertyName():String{
            return this.pname;
        }
        public function getType():String{
            return this.type;
        }
        override public function getIndent():String{
            return "\t\t";
        }
        public function setShortReturnType(srt:String):void{
            this.shortReturnType = srt;
        }
        public function toString():String{
            throw new Error("Class: Property is a abstract class, you should to override it!");
        }
        public function setStatic(s:Boolean):void{
            this.isStatic = s;
        }
        public function setType(type:String):void{
            this.type = type;
        }
        public function getShortReturnType():String{
            return this.shortReturnType;
        }

    }
}