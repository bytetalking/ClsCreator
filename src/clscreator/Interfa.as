package clscreator {
    import flash.utils.*;

	/**
	 * Interface
	 * @author babyfaction
	 */
    public class Interfa {

        public static const Mark:String = " implements";

        private var NameSpace:String;

        public function Interfa(interfCls:Class){
            super();
            this.NameSpace = getQualifiedClassName(interfCls).split("::").join(".");
        }
        public function getName():String{
            return this.NameSpace;
        }
        public function toString():String{
            var a:Array = getName().split(".");
            return " " + a.pop();
        }

    }
}