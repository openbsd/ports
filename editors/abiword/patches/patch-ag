--- ../wv/oledecod/oledecod.c.orig	Thu Mar 30 06:01:43 2000
+++ ../wv/oledecod/oledecod.c	Mon Jun 12 05:09:33 2000
@@ -49,6 +49,7 @@
 #include <ctype.h>
 #include <sys/types.h>
 #include <assert.h>
+#include <unistd.h>
 
 #include "wv.h"
 
@@ -340,6 +341,7 @@ OLEdecode (FILE *input, pps_entry ** str
     U16 BlockSize, Offset;
     size_t bytes_to_read;
     U32 pps_size, pps_start;
+    int fd;
 #define THEMIN(a,b) ((a)<(b) ? (a) : (b))
 
     for (i = 0; i < num_of_pps; i++)
@@ -367,19 +369,27 @@ OLEdecode (FILE *input, pps_entry ** str
 	  {
 	    assert (i == *root);
 	    assert (i == 0);
-	    tmpnam (sbfilename);
-	    test (sbfilename[0], 7, ends ());
-	    sbfile = OLEfile = fopen (sbfilename, "wb+");
+	    strcpy(sbfilename, "/tmp/oledecodXXXXXXX");
+	    fd = mkstemp(sbfilename);
+	    test (fd != -1, 7, ends ());
+	    if ((sbfile = OLEfile = fdopen (fd, "wb+")) == NULL) {
+		unlink(sbfilename);
+		close(fd);
+	    }
 	    test (OLEfile != NULL, 7, ends ());
 	    verboseS (sbfilename);
 	  }
 	else
 	  /* other entry, save in a file */
 	  {
-	    tmpnam (pps_list[i].filename);
-	    test (pps_list[i].filename[0], 7, ends ());
+	    strcpy(pps_list[i].filename, "/tmp/oledecodXXXXXXX");
+	    fd = mkstemp(sbfilename);
+	    test (fd != -1, 7, ends ());
 	    verbose (pps_list[i].name);
-	    OLEfile = fopen (pps_list[i].filename, "wb");
+	    if ((OLEfile = fdopen (fd, "wb")) == NULL) {
+		unlink(pps_list[i].filename);
+		close(fd);
+	    }
 	    test (OLEfile != NULL, 7, ends ());
 	    verbose (pps_list[i].filename);
 	  }
