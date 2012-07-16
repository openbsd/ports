--- iftop.c.orig	Tue Oct  4 14:30:37 2011
+++ iftop.c	Fri Jan 20 06:40:39 2012
@@ -28,6 +28,8 @@
 #include <string.h>
 #include <unistd.h>
 #include <locale.h>
+#include <pwd.h>
+#include <err.h>
 
 #include "iftop.h"
 #include "addr_hash.h"
@@ -763,10 +765,13 @@ void packet_loop(void* ptr) {
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
@@ -776,12 +781,16 @@ int main(int argc, char **argv) {
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
 
