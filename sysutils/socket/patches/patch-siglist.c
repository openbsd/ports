$OpenBSD: patch-siglist.c,v 1.2 2002/04/17 21:38:11 naddy Exp $
--- siglist.c.orig	Sun Aug 30 15:50:48 1992
+++ siglist.c	Wed Apr 17 23:21:46 2002
@@ -22,6 +22,7 @@ with Bash; see the file COPYING.  If not
 Foundation, 675 Mass Ave, Cambridge, MA 02139, USA. */
 
 #include <stdio.h>
+#include <stdlib.h>
 #include <signal.h>
 
 #if !defined (NSIG)
@@ -32,12 +33,17 @@ Foundation, 675 Mass Ave, Cambridge, MA 
 #  endif /* !_NSIG */
 #endif /* !NSIG */
 
-char *sys_siglist[NSIG];
+#if HAVE_SYS_PARAM_H
+# include <sys/param.h>
+#endif
 
-extern *malloc ();
+#if !(defined(BSD) && (BSD >=199306))
+char *sys_siglist[NSIG];
+#endif
 
-initialize_siglist ()
+void initialize_siglist ()
 {
+#if !(defined(BSD) && (BSD >=199306))
   register int i;
 
   for (i = 0; i < NSIG; i++)
@@ -219,4 +225,5 @@ initialize_siglist ()
 	  sprintf (sys_siglist[i], "Unknown Signal #%d", i);
 	}
     }
+#endif /* !(defined(BSD) && (BSD >=199306)) */
 }
