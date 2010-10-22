--- ccutil/debugwin.cpp.orig	Tue Oct  5 20:25:10 2010
+++ ccutil/debugwin.cpp	Tue Oct  5 20:25:55 2010
@@ -238,8 +238,8 @@ DEBUG_WIN::DEBUG_WIN(                    //constructor
   length += sprintf (command + length, "trap \"\" 1 2 3 13 15\n");
   length +=
     sprintf (command + length,
-    "/usr/bin/xterm -sb -sl " INT32FORMAT " -geometry "
-    INT32FORMAT "x" INT32FORMAT "", buflines, xsize / 8, ysize / 16);
+	"${X11BASE}/xterm -sb -sl " INT32FORMAT " -geometry "
+	INT32FORMAT "x" INT32FORMAT "", buflines, xsize / 8, ysize / 16);
   if (xpos >= 0)
     command[length++] = '+';
   length += sprintf (command + length, INT32FORMAT, xpos);
