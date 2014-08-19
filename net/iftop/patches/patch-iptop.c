$OpenBSD: patch-iptop.c,v 1.4 2014/08/19 21:19:00 sthen Exp $
--- iftop.c.orig	Wed Jan  1 15:20:10 2014
+++ iftop.c	Tue Jan 14 00:51:01 2014
@@ -28,6 +28,8 @@
 #include <string.h>
 #include <unistd.h>
 #include <locale.h>
+#include <pwd.h>
+#include <err.h>
 
 #include "iftop.h"
 #include "addr_hash.h"
@@ -768,7 +770,7 @@ void packet_init() {
     else {
         fprintf(stderr, "Unsupported datalink type: %d\n"
                 "Please email pdw@ex-parrot.com, quoting the datalink type and what you were\n"
-                "trying to do at the time\n.", dlt);
+                "trying to do at the time.\n", dlt);
         exit(1);
     }
 
@@ -790,10 +792,13 @@ void packet_loop(void* ptr) {
  * Entry point. See usage(). */
 int main(int argc, char **argv) {
     pthread_t thread;
-    struct sigaction sa = {};
+    struct passwd *pw;
 
     setlocale(LC_ALL, "");
 
+    if ((pw = getpwnam("_iftop")) == NULL)
+         errx(1, "no such user: _iftop");
+
     /* TODO: tidy this up */
     /* read command line options and config file */   
     config_init();
@@ -803,12 +808,16 @@ int main(int argc, char **argv) {
     read_config(options.config_file, options.config_file_specified);
     options_make();
     
-    sa.sa_handler = finish;
-    sigaction(SIGINT, &sa, NULL);
-
     pthread_mutex_init(&tick_mutex, NULL);
 
     packet_init();
+
+    if (setresgid(pw->pw_gid, pw->pw_gid, pw->pw_gid) == -1)
+        err(1,"setresgid");
+    if (setgroups(1, &pw->pw_gid) == -1)
+        err(1,"setgroups");
+    if (setresuid(pw->pw_uid, pw->pw_uid, pw->pw_uid) == -1)
+        err(1,"setresuid");
 
     init_history();
 
