import java_cup.runtime.*;

%%

%class scanner
%unicode
%cup

// Definição de tokens
WHITESPACE = [\t\n\r ]+
DIGIT = [0-9]+
ID = [a-zA-Z_][a-zA-Z0-9_]*

// Operadores de comparação
GT = ">"
LT = "<"
GE = ">="
LE = "<="
EQ = "=="
NE = "!="

// Comentários em linha e multi-linha
COMMENT = "//".*("\n"|\r|\r\n)|"/*"[^*]*"*"+([^/*][^*]*"*")*"/"

// Regras de tokens
%%

<YYINITIAL> {
    {WHITESPACE}  { /* Ignora espaços em branco */ }
    {COMMENT}         { /* Ignora comentários */ }
        "if"              { return new Symbol(sym.IF); }
        "else"            { return new Symbol(sym.ELSE); }
        "while"           { return new Symbol(sym.WHILE); }
        "return"          { return new Symbol(sym.RETURN); }
        ";"               { return new Symbol(sym.SEMI); }
        "+"               { return new Symbol(sym.PLUS); }
        "-"               { return new Symbol(sym.MINUS); }
        "*"               { return new Symbol(sym.TIMES); }
        "("               { return new Symbol(sym.LPAREN); }
        ")"               { return new Symbol(sym.RPAREN); }
        "="               { return new Symbol(sym.EQUALS); }
        {GT}              { return new Symbol(sym.GT); }
        {LT}              { return new Symbol(sym.LT); }
        {GE}              { return new Symbol(sym.GE); }
        {LE}              { return new Symbol(sym.LE); }
        {EQ}              { return new Symbol(sym.EQ); }
        {NE}              { return new Symbol(sym.NE); }

    // Identificadores e números
    {ID}          { return new Symbol(sym.IDENTIFIER, yytext()); }
    {DIGIT}       { return new Symbol(sym.NUMBER, Integer.parseInt(yytext())); }

    // Caractere ilegal
    .             { System.err.println("Caractere ilegal: " + yytext()); }
}
