--- pine/pine.c.orig	Fri Sep 15 06:37:40 2000
+++ pine/pine.c	Fri Sep 15 06:39:53 2000
@@ -40,7 +40,7 @@
   ----------------------------------------------------------------------*/
 
 #include "headers.h"
-#include "../c-client/imap4r1.h"
+#include "c-client/imap4r1.h"
 
 
 /*
@@ -299,7 +299,7 @@
 #endif
 
     /*------- Set up c-client drivers -------*/ 
-#include "../c-client/linkage.c"
+#include "c-client/linkage.c"
 
     /*------- ... then tune the drivers just installed -------*/ 
 #ifdef	DOS
