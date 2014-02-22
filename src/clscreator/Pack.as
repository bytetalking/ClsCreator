package clscreator {
    import clscreator.base.*;

	/**
	 * Package
	 * @author babyfaction
	 */	
    public class Pack extends BaseCls {

        private const Name:String = "package";

        private var folders:Array;

        public function Pack(path:String=""){
            super();
            this.folders = path.split("/");
        }
        public function toNameSpaceString():String{
            return this.folders.join(".");
        }
        public function removeFolder(folder:String):void{
            var i:int = this.folders.indexOf(folder);
            this.folders.splice(i, 0);
        }
        public function toString():String{
            return Name + " " + this.folders.join(".") + getNewline();
        }
        public function addFolder(folder:String):void{
            this.folders.push(folder);
        }

    }
}