--- iftop.c.orig	Sun Dec 16 16:39:56 2007
+++ iftop.c	Sun Dec 16 16:40:10 2007
@@ -561,7 +561,6 @@
  * Entry point. See usage(). */
 int main(int argc, char **argv) {
     pthread_t thread;
-    struct sigaction sa = {};
 
     /* TODO: tidy this up */
     /* read command line options and config file */   
@@ -572,9 +571,6 @@
     read_config(options.config_file, options.config_file_specified);
     options_make();
     
-    sa.sa_handler = finish;
-    sigaction(SIGINT, &sa, NULL);
-
     pthread_mutex_init(&tick_mutex, NULL);
 
     packet_init();
