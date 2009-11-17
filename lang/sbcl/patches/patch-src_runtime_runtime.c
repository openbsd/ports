$OpenBSD: patch-src_runtime_runtime.c,v 1.2 2009/11/17 10:45:00 pirofti Exp $

Don't hardcode /usr/local, patch and use SUBST_COMMAND.

Try to guess the path to the current executable from argv[0] and stash
it in saved_runtime_path for later.  It's needed to check for an
embedded core, to save an executable core, and to write a shebang line
in fasls.

Check saved_runtime_path if os_get_runtime_executable_path(0) returns
NULL, which it always will on OpenBSD unless /proc is mounted.

--- src/runtime/runtime.c.orig	Thu May 21 09:22:55 2009
+++ src/runtime/runtime.c	Mon Jun 29 07:53:42 2009
@@ -67,7 +67,7 @@
 #endif
 
 #ifndef SBCL_HOME
-#define SBCL_HOME "/usr/local/lib/sbcl/"
+#define SBCL_HOME "${PREFIX}/lib/sbcl/"
 #endif
 
 #ifdef LISP_FEATURE_HPUX
@@ -127,6 +127,37 @@ copied_existing_filename_or_null(char *filename)
         return copied_string(filename);
     }
 }
+
+#ifndef LISP_FEATURE_WIN32
+char *
+copied_realpath(const char *pathname)
+{
+    char *messy, *tidy;
+    size_t len;
+
+    /* realpath() supposedly can't be counted on to always return
+     * an absolute path, so we prepend the cwd to relative paths */
+    messy = NULL;
+    if (pathname[0] != '/') {
+        messy = successful_malloc(PATH_MAX + 1);
+        if (getcwd(messy, PATH_MAX + 1) == NULL) {
+            free(messy);
+            return NULL;
+        }
+        len = strlen(messy);
+        snprintf(messy + len, PATH_MAX + 1 - len, "/%s", pathname);
+    }
+
+    tidy = successful_malloc(PATH_MAX + 1);
+    if (realpath((messy ? messy : pathname), tidy) == NULL) {
+        free(messy);
+        free(tidy);
+        return NULL;
+    }
+
+    return tidy;
+}
+#endif /* LISP_FEATURE_WIN32 */
 
 /* miscellaneous chattiness */
 
@@ -205,11 +236,58 @@ search_for_core ()
     return core;
 }
 
+/* Try to find the path to an executable from argv[0], this is only
+ * used when os_get_runtime_executable_path() returns NULL */
+#ifdef LISP_FEATURE_WIN32
+char *
+search_for_executable(const char *argv0)
+{
+    return NULL;
+}
+#else /* LISP_FEATURE_WIN32 */
+char *
+search_for_executable(const char *argv0)
+{
+    char *search, *start, *end, *buf;
+
+    /* If argv[0] contains a slash then it's probably an absolute path
+     * or relative to the current directory, so check if it exists. */
+    if (strchr(argv0, '/') != NULL && access(argv0, F_OK) == 0)
+        return copied_realpath(argv0);
+
+    /* Bail on an absolute path which doesn't exist */
+    if (argv0[0] == '/')
+        return NULL;
+
+    /* Otherwise check if argv[0] exists relative to any directory in PATH */
+    search = getenv("PATH");
+    if (search == NULL)
+        return NULL;
+    search = copied_string(search);
+    buf = successful_malloc(PATH_MAX + 1);
+    for (start = search; (end = strchr(start, ':')) != NULL; start = end + 1) {
+        *end = '\0';
+        snprintf(buf, PATH_MAX + 1, "%s/%s", start, argv0);
+        if (access(buf, F_OK) == 0) {
+            free(search);
+            search = copied_realpath(buf);
+            free(buf);
+            return search;
+        }
+    }
+
+    free(search);
+    free(buf);
+    return NULL;
+}
+#endif /* LISP_FEATURE_WIN32 */
+
 char **posix_argv;
 char *core_string;
 
 struct runtime_options *runtime_options;
 
+char *saved_runtime_path = NULL;
 
 int
 main(int argc, char *argv[], char *envp[])
@@ -241,15 +319,22 @@ main(int argc, char *argv[], char *envp[])
 
     runtime_options = NULL;
 
+    /* Save the argv[0] derived runtime path in case
+     * os_get_runtime_executable_path(1) isn't able to get an
+     * externally-usable path later on. */
+    saved_runtime_path = search_for_executable(argv[0]);
+
     /* Check early to see if this executable has an embedded core,
      * which also populates runtime_options if the core has runtime
      * options */
-    runtime_path = os_get_runtime_executable_path();
-    if (runtime_path) {
-        os_vm_offset_t offset = search_for_embedded_core(runtime_path);
+    runtime_path = os_get_runtime_executable_path(0);
+    if (runtime_path || saved_runtime_path) {
+        os_vm_offset_t offset = search_for_embedded_core(
+            runtime_path ? runtime_path : saved_runtime_path);
         if (offset != -1) {
             embedded_core_offset = offset;
-            core = runtime_path;
+            core = (runtime_path ? runtime_path :
+                    copied_string(saved_runtime_path));
         } else {
             free(runtime_path);
         }
