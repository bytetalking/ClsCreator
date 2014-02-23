package clscreator.base {
    import flash.utils.*;

	/**
	 * Parameter, use in the method
	 * @author babyfaction
	 */	
    public class Param {

        private var pType:String; //parameter type
        private var defaultValue:String;
        private var pName:String; //parameter name
        private var shortType:String;

		/**
		 * @param pname parameter name
		 * @param ptype can use a real Class
		 * @param defaultValue
		 * 
		 */		
        public function Param(pname:String, ptype:Object, defaultValue:Object=null){
            var a:Array;
            super();
            setName(pname);
            if (ptype is Class){
                a = getQualifiedClassName(ptype).split("::");
                setType(a.join("."));
                setShortType(a.pop());
            } else {
                setType(String(ptype));
                setShortType(String(ptype));
            };
            if (defaultValue){
                setDefaultValue(String(defaultValue));
            };
        }
        public function getName():String{
            return this.pName;
        }
        public function setShortType(st:String):void{
            this.shortType = st;
        }
        public function toString():String{
            if (this.defaultValue){
                return getName() + ":" + getShortType() + "=" + getDefaultValue();
            };
            return getName() + ":" + getShortType();
        }
        public function getDefaultValue():String{
            return this.defaultValue;
        }
        public function getShortType():String{
            return this.shortType;
        }
        public function setName(n:String):void{
            this.pName = n;
        }
        public function setDefaultValue(dv:String):void{
            this.defaultValue = dv;
        }
        public function getType():String{
            return this.pType;
        }
        public function setType(t:String):void{
            this.pType = t;
        }

    }
}