--- vicar.c.orig	Sun Aug  6 06:23:50 2000
+++ vicar.c	Sun Aug  6 06:35:44 2000
@@ -11,9 +11,12 @@
 #define LINES     label[8]
 #define SAMPLES   label[6]
  
+#include "image.h"
+
 #include <stdio.h>
+#ifdef HAVE_MALLOC_H
 #include <malloc.h>
-#include "image.h"
+#endif
 #include <sys/types.h>
 
 FILE *fp,*fopen();
