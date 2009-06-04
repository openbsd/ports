$OpenBSD: patch-Config.h,v 1.4 2009/06/04 23:37:50 naddy Exp $
--- Config.h.orig	Wed May 24 17:48:59 2000
+++ Config.h	Fri Jun  5 00:51:49 2009
@@ -75,8 +75,8 @@ static DynamicConfig &dConfig = DynamicConfig::dynamic
 
 // What to run to get a new window (from the "New" menu option)
 #define CONFIG_NEW_WINDOW_LABEL "New"
-//#define CONFIG_NEW_WINDOW_COMMAND "xterm"
-#define CONFIG_NEW_WINDOW_COMMAND "/home/chris/.wmx/terminal"
+#define CONFIG_NEW_WINDOW_COMMAND "xterm"
+//#define CONFIG_NEW_WINDOW_COMMAND "/home/chris/.wmx/terminal"
 #define CONFIG_NEW_WINDOW_COMMAND_OPTIONS 0
 // or, for example,
 //#define CONFIG_NEW_WINDOW_COMMAND_OPTIONS "-ls","-sb","-sl","1024",0
@@ -373,7 +373,7 @@ static DynamicConfig &dConfig = DynamicConfig::dynamic
 // that you are not currently on, some strange things happen.
 // (Patch due to Henri Naccache <henri@asu.edu>)
 
-#define CONFIG_GNOME_COMPLIANCE   False
+#define CONFIG_GNOME_COMPLIANCE   True
 
 // This lets you choose whether to keep the regular wmx
 // mouse button behaviour, or go w/ the GNOME-described one.
