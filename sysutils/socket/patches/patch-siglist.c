--- siglist.c.orig	Sun Aug 30 09:50:48 1992
+++ siglist.c	Fri Mar 31 17:08:20 2000
@@ -32,12 +32,18 @@
 #  endif /* !_NSIG */
 #endif /* !NSIG */
 
-char *sys_siglist[NSIG];
+#if HAVE_SYS_PARAM_H
+# include <sys/param.h>
+#endif
 
+#if !(defined(BSD) && (BSD >=199306))
+char *sys_siglist[NSIG];
+#endif
 extern *malloc ();
 
-initialize_siglist ()
+void initialize_siglist ()
 {
+#if !(defined(BSD) && (BSD >=199306))
   register int i;
 
   for (i = 0; i < NSIG; i++)
@@ -219,4 +225,5 @@
 	  sprintf (sys_siglist[i], "Unknown Signal #%d", i);
 	}
     }
+#endif /* !(defined(BSD) && (BSD >=199306)) */
 }
