package clscreator.base {

	/**
	 * Statement, you can put it in Method
	 * @author babyfaction
	 */
    public class Statement extends BaseCls {

        private var statementStr:String;

        public function Statement(statementString:String=""){
            super();
            setStatement(statementString);
        }
        override public function getIndent():String{
            return "\t\t\t";
        }
        public function getStatement():String{
            return this.statementStr;
        }
        public function toString():String{
            return this.getIndent() + this.statementStr + BaseCls.NEW_LINE;
        }
        public function setStatement(s:String):void{
            this.statementStr = s;
        }

    }
}