--- plugins.c.orig	Mon Feb  5 14:31:57 2001
+++ plugins.c	Sun May 27 17:50:15 2001
@@ -231,7 +231,7 @@ static int get_plugin_info(struct plugin
    p->plugin_post_sync = NULL;
    p->plugin_exit_cleanup = NULL;
    
-   h = dlopen(path, RTLD_NOW);
+   h = dlopen(path, DL_LAZY);
    if (!h) {
       jpilot_logf(LOG_WARN, "open failed on plugin [%s]\n error [%s]\n", path,
 		  dlerror());
@@ -243,6 +243,9 @@ static int get_plugin_info(struct plugin
    p->full_path = strdup(path);
 
    /* plugin_versionM */
+#if defined __OpenBSD__ && !defined __ELF__
+#define dlsym(x,y) dlsym(x, "_" y)
+#endif
    plugin_versionM = dlsym(h, "plugin_version");
    if (plugin_versionM==NULL)  {
       err = dlerror();
