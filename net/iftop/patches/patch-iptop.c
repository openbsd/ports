--- iftop.c.orig	Thu Mar 31 13:08:05 2005
+++ iftop.c	Mon Jan 26 22:48:19 2009
@@ -25,6 +25,8 @@
 #include <signal.h>
 #include <string.h>
 #include <unistd.h>
+#include <pwd.h>
+#include <err.h>
 
 #include "iftop.h"
 #include "addr_hash.h"
@@ -561,8 +563,12 @@ void packet_loop(void* ptr) {
  * Entry point. See usage(). */
 int main(int argc, char **argv) {
     pthread_t thread;
-    struct sigaction sa = {};
+    struct passwd *pw;
 
+    if ((pw = getpwnam("_iftop")) == NULL) {
+        errx(1, "no such user: _iftop");
+    }
+
     /* TODO: tidy this up */
     /* read command line options and config file */   
     config_init();
@@ -572,12 +578,16 @@ int main(int argc, char **argv) {
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
 
