--- plugins.c.orig	Mon Feb  5 22:31:57 2001
+++ plugins.c	Fri Feb 23 17:04:14 2001
@@ -231,7 +231,7 @@
    p->plugin_post_sync = NULL;
    p->plugin_exit_cleanup = NULL;
    
-   h = dlopen(path, RTLD_NOW);
+   h = dlopen(path, DL_LAZY);
    if (!h) {
       jpilot_logf(LOG_WARN, "open failed on plugin [%s]\n error [%s]\n", path,
 		  dlerror());
