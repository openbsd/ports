$OpenBSD: patch-iptop.c,v 1.5 2014/08/19 22:38:33 jca Exp $
--- iftop.c.orig	Sun Jan 19 21:21:19 2014
+++ iftop.c	Wed Aug 20 00:35:21 2014
@@ -28,6 +28,8 @@
 #include <string.h>
 #include <unistd.h>
 #include <locale.h>
+#include <pwd.h>
+#include <err.h>
 
 #include "iftop.h"
 #include "addr_hash.h"
@@ -713,7 +715,7 @@ void packet_init() {
     if(have_hw_addr) {
       fprintf(stderr, "MAC address is:");
       for (i = 0; i < 6; ++i)
-	fprintf(stderr, "%c%02x", i ? ':' : ' ', (unsigned int)if_hw_addr[i]);
+	fprintf(stderr, "%c%02x", i ? ':' : ' ', if_hw_addr[i] & 0xff);
       fprintf(stderr, "\n");
     }
     
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
 
