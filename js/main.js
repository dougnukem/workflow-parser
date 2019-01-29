var fs = require('fs')
var lexer = require('./lexer')
var parser = require('./parser')

var contents = fs.readFileSync("../foo.workflow", "utf8")
var tokens = lexer.lex(contents)
var ast = parser.parseWorkflowFile(tokens, [0])
if (!ast || (ast.length > 0 && !ast[ast.length-1])) {
	return
}

console.log(JSON.stringify(ast, null, 2))