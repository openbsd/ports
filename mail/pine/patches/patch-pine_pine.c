--- pine/pine.c.orig	Tue Nov 28 12:05:24 2000
+++ pine/pine.c	Sun Dec 10 13:00:31 2000
@@ -40,7 +40,7 @@
   ----------------------------------------------------------------------*/
 
 #include "headers.h"
-#include "../c-client/imap4r1.h"
+#include "c-client/imap4r1.h"
 
 
 /*
@@ -351,7 +351,7 @@
 #endif
 
     /*------- Set up c-client drivers -------*/ 
-#include "../c-client/linkage.c"
+#include "c-client/linkage.c"
 
     /*------- ... then tune the drivers just installed -------*/ 
 #ifdef	DOS
