--- pty.c.orig	Fri Aug 27 06:00:12 1999
+++ pty.c	Tue Nov  9 22:49:52 1999
@@ -32,6 +32,23 @@
 #include "config.h"
 #include "screen.h"
 
+#if HAVE_DIRENT_H
+# include <dirent.h>
+# define NAMLEN(dirent) strlen((dirent)->d_name)
+#else
+# define dirent direct
+# define NAMLEN(dirent) (dirent)->d_namlen
+# if SYSNDIR
+#  include <sys/ndir.h>
+# endif
+# if SYSDIR
+#  include <sys/dir.h>
+# endif
+# if NDIR
+#  include <ndir.h>
+# endif
+#endif
+
 #ifndef sun
 # include <sys/ioctl.h>
 #endif
@@ -315,25 +332,25 @@
 OpenPTY(ttyn)
 char **ttyn;
 {
-  register char *p, *q, *l, *d;
-  register int f;
+  DIR *devdir;
+  struct dirent *candidate;
+  int f;
 
-  debug("OpenPTY: Using BSD style ptys.\n");
-  strcpy(PtyName, PtyProto);
-  strcpy(TtyName, TtyProto);
-  for (p = PtyName; *p != 'X'; p++)
-    ;
-  for (q = TtyName; *q != 'X'; q++)
-    ;
-  for (l = PTYRANGE0; (*p = *l) != '\0'; l++)
+  debug("OpenPTY: Using BSD style ptys, dynamic range.\n");
+
+  devdir = opendir("/dev");
+  if (!devdir)
+    return -1;
+  while (candidate = readdir(devdir))
     {
-      for (d = PTYRANGE1; (p[1] = *d) != '\0'; d++)
+      if (NAMLEN(candidate) == 5 && strncmp(candidate->d_name, "pty", 3) == 0)
 	{
+	  sprintf(PtyName, "/dev/%s", candidate->d_name);
 	  debug1("OpenPTY tries '%s'\n", PtyName);
 	  if ((f = open(PtyName, O_RDWR | O_NOCTTY)) == -1)
 	    continue;
-	  q[0] = *l;
-	  q[1] = *d;
+	  strcpy(TtyName, PtyName);
+	  TtyName[5] = 't';
 	  if (eff_uid && access(TtyName, R_OK | W_OK))
 	    {
 	      close(f);
@@ -356,9 +373,11 @@
 #endif
 	  initmaster(f);
 	  *ttyn = TtyName;
+	  closedir(devdir);
 	  return f;
 	}
     }
+  closedir(devdir);
   return -1;
 }
 #endif
