--- Config.h.orig	Wed May 24 17:48:59 2000
+++ Config.h	Mon Jun 12 23:31:35 2000
@@ -75,8 +75,8 @@
 
 // What to run to get a new window (from the "New" menu option)
 #define CONFIG_NEW_WINDOW_LABEL "New"
-//#define CONFIG_NEW_WINDOW_COMMAND "xterm"
-#define CONFIG_NEW_WINDOW_COMMAND "/home/chris/.wmx/terminal"
+#define CONFIG_NEW_WINDOW_COMMAND "xterm"
+//#define CONFIG_NEW_WINDOW_COMMAND "/home/chris/.wmx/terminal"
 #define CONFIG_NEW_WINDOW_COMMAND_OPTIONS 0
 // or, for example,
 //#define CONFIG_NEW_WINDOW_COMMAND_OPTIONS "-ls","-sb","-sl","1024",0
