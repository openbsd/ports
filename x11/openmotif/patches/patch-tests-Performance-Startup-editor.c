--- tests/Performance/Startup/editor.c.orig	Wed May  3 02:12:48 2000
+++ tests/Performance/Startup/editor.c	Mon Nov 20 19:08:40 2000
@@ -238,7 +238,7 @@
 
     strcpy(tempname, "/tmp/xmeditXXXXXX");
     
-    if ((tfp = fopen(mktemp(tempname), "w")) == NULL) {
+    if ((tfp = mkstemp(tempname)) == NULL) {
        fprintf(stderr, "Warning: unable to open temp file, text not saved.\n");
        return(False);;
     }
