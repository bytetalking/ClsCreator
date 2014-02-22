package clscreator {
    import clscreator.base.*;

	/**
	 * Method
	 * @author babyfaction
	 */
    public class Method extends Property {

        public static const VOID:String = "void";
        public static const EVERY:String = "*";
        private static const Mark:String = "function";

        private var statements:Array;
        private var params:Array;

        public function Method(name:String, returnType:Object, type:String="private", statement:Statement=null, isStatic:Boolean=false){
            statements = [];
            params = [];
            super(name, returnType, type, isStatic);
            addStatement(statement);
        }
        public function addStatementAt(s:Statement, index:int):void{
            if (!s){
                return;
            };
            this.statements.splice(index, 0, s);
        }
        private function createParamString():String{
            var i:uint;
            var a:Array = [];
            var len:uint = this.params.length;
            i = 0;
            while (i < len) {
                a.push(ParamBase(this.params[i]).toString());
                i++;
            };
            return a.join(",");
        }
        public function addParams(p:ParamBase):void{
            if (!p){
                return;
            };
            this.params.push(p);
        }
        override public function getIndent():String{
            return "\t\t";
        }
        public function addStatement(s:Statement):void{
            if (!s){
                return;
            };
            this.statements.push(s);
        }
        public function getStatements():Array{
            return this.statements.concat();
        }
        override public function toString():String{
            var statement:Statement;
            var str:String = "";
            str += this.getIndent();
            str += this.getType() + " ";
            str += (this.isStatic) ? "static " : "";
            str += Mark + " " + this.getPropertyName() + "(" + this.createParamString() + "):" + this.getShortReturnType() + this.getNewline();
            str += this.getIndent() + "{" + this.getNewline();
            for each (statement in this.statements) {
                str += statement.toString();
            };
            str += this.getIndent() + "}" + this.getNewline();
            return str;
        }
        public function getParams():Array{
            return this.params.concat();
        }
        public function addStatementString(s:String):void{
            addStatement(new Statement(s));
        }

    }
}