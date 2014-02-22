package clscreator {
    import flash.utils.*;

	/**
	 * Super Class
	 * @author babyfaction
	 */
    public class SuperCls {

        private var clsName:String;

        public function SuperCls(c:Class){
            super();
            this.clsName = getQualifiedClassName(new c()).split("::").join(".");
        }
        public function getName():String{
            return this.clsName;
        }
        public function toString():String{
            var a:Array = getName().split(".");
            return " extends " + a.pop();
        }

    }
}