--- src/main.c.orig	Sat Feb 26 23:57:52 2000
+++ src/main.c	Fri Jul 21 02:40:39 2000
@@ -590,7 +590,7 @@
 	    enc = "GB";
 	    break;
 	case BIG5:
-	    c = "-*-r-*-%.2d-*-big5-0";
+	    c = "*16*big5*";
 	    enc = "BIG5";
 	    break;
 	case EUCJ:
