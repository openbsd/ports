--- pine/abookcpy.c.orig	Fri Sep 15 06:36:29 2000
+++ pine/abookcpy.c	Fri Sep 15 06:36:54 2000
@@ -63,7 +63,7 @@
     FILE       *fp;
     int         trimsize;
 
-#include "../c-client/linkage.c"
+#include "c-client/linkage.c"
 
     trimsize = parse_args(argc, argv, &local, &remote);
 
