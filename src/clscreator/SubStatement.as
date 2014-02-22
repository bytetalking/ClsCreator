package clscreator {
    import clscreator.base.*;

	/**
	 * Sub Statement
	 * @author babyfaction
	 */	
    public class SubStatement extends Statement {

        private var indentTab:uint;

		/**
		 * @param statementString statement content
		 * @param indentTab the indent times, the first is 3, so sub is start at 4, you can change it
		 * 
		 */		
        public function SubStatement(statementString:String="", indentTab:uint=4){
            super(statementString);
            this.indentTab = indentTab;
        }
        override public function getIndent():String{
            var i:uint;
            var s:String = "";
            i = 0;
            while (i < this.indentTab) {
                s = (s + "\t");
                i++;
            };
            return s;
        }

    }
}