--- session.c.orig	Tue Dec 11 15:38:52 2001
+++ session.c	Fri Jul  5 14:36:25 2002
@@ -892,6 +892,7 @@
     return found;
 }
 
+#ifndef __OpenBSD__
 /*===[ Unique Filename Generator ]===========================================*/
 
 static char *
@@ -922,6 +923,7 @@
 #endif
 }
 
+#endif /* ! __OpenBSD__ */
 /*===[ SAVE WINDOW INFORMATION ]=============================================*/
 
 #ifndef PATH_MAX
@@ -951,6 +953,10 @@
     char discardCommand[PATH_MAX + 4];
     int numVals, i;
     char yes = 1;
+#ifdef __OpenBSD__
+    int tmphandle;
+    char tmpprefix[256];
+#endif
     static int first_time = 1;
 
     if (first_time)
@@ -1003,12 +1009,20 @@
      *        no longer the same since the new format supports
      *        virtaul workspaces.
      *========================================================*/
+#ifdef __OpenBSD__
+    strncpy(tmpprefix, path, 256);
+    strncat(tmpprefix, "/.ctwmXXXXXX", (sizeof(path) - 12));
+    if ((tmphandle = mkstemp(tmpprefix)) == -1)
+      goto bad;
+    if ((configFile = fdopen(tmphandle, "wb")) == NULL)
+      goto bad;
+#else
     if ((filename = unique_filename (path, ".ctwm")) == NULL)
 	goto bad;
 
     if (!(configFile = fopen (filename, "wb"))) /* wb = write bytes ? */
 	goto bad;
-
+#endif /* __OpenBSD__ */
     if (!write_ushort (configFile, SAVEFILE_VERSION))
 	goto bad;
 
