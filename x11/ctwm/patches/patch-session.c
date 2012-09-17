--- session.c.orig	Tue Dec 11 16:38:52 2001
+++ session.c	Sun Sep  2 18:59:56 2012
@@ -892,6 +892,7 @@ int *occupation; /* <== [ Matthew McNeill Feb 1997 ] =
     return found;
 }
 
+#ifndef __OpenBSD__
 /*===[ Unique Filename Generator ]===========================================*/
 
 static char *
@@ -922,6 +923,7 @@ char *prefix;
 #endif
 }
 
+#endif /* ! __OpenBSD__ */
 /*===[ SAVE WINDOW INFORMATION ]=============================================*/
 
 #ifndef PATH_MAX
@@ -951,6 +953,10 @@ SmPointer clientData;
     char discardCommand[PATH_MAX + 4];
     int numVals, i;
     char yes = 1;
+#ifdef __OpenBSD__
+    int tmphandle;
+    char tmpprefix[256];
+#endif
     static int first_time = 1;
 
     if (first_time)
@@ -1003,12 +1009,20 @@ SmPointer clientData;
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
 
