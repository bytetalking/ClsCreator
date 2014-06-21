package clscreator {
    import clscreator.base.*;

	/**
	 * NameSpace (import xxx.xx...
	 * @author babyfaction
	 */	
    public class NameSpace extends BaseCls {

        private var Name:String;

        public function NameSpace(Name:String){
            super();
            this.Name = Name;
        }
        public function getName():String{
            return this.Name;
        }
        public function toString():String{
            return getIndent() + "import " + Name + ";" + BaseCls.NEW_LINE;
        }
        override public function getIndent():String{
            return "\t";
        }

    }
}