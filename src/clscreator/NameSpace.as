package clscreator {
    import clscreator.base.*;
    
    import flash.utils.getQualifiedClassName;

	/**
	 * NameSpace (import xxx.xx...
	 * @author babyfaction
	 */	
    public class NameSpace extends BaseCls {

        private var n:String;

        public function NameSpace(name:Object){
            super();
			
			if(name is String){
            	this.n = name.toString();
			}else{
				this.n = getQualifiedClassName(name).split("::").join(".");
			}
        }
        public function getName():String{
            return this.n;
        }
        public function toString():String{
            return getIndent() + "import " + n + ";" + BaseCls.NEW_LINE;
        }
        override public function getIndent():String{
            return "\t";
        }

    }
}