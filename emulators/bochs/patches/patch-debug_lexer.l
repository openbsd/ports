--- debug/lexer.l.orig	Mon Nov  1 19:17:09 1999
+++ debug/lexer.l	Tue Oct  3 13:18:08 2000
@@ -105,7 +105,7 @@ v2l             { bxlval.sval = strdup(b
 \/[0-9]+                           { bxlval.sval = strdup(bxtext); return(BX_TOKEN_XFORMAT); }
 0x[0-9a-fA-F]+  { bxlval.uval = strtoul(bxtext+2, NULL, 16); return(BX_TOKEN_NUMERIC); }
 0[0-7]+         { bxlval.uval = strtoul(bxtext+1, NULL, 8); return(BX_TOKEN_NUMERIC); }
-[0-9]+L         { bxlval.ulval = strtoull(bxtext, NULL, 10); return(BX_TOKEN_LONG_NUMERIC); }
+[0-9]+L         { bxlval.ulval = strtoul(bxtext, NULL, 10); return(BX_TOKEN_LONG_NUMERIC); }
 [0-9]+          { bxlval.uval = strtoul(bxtext, NULL, 10); return(BX_TOKEN_NUMERIC); }
 $[a-zA-Z_][a-zA-Z0-9_]* { bxlval.sval = strdup(bxtext); return(BX_TOKEN_SYMBOLNAME); }
 \n              { return('\n'); }
