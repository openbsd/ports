--- sh.dol.c.orig	Sun Nov 12 15:22:50 2000
+++ sh.dol.c	Sun Nov 12 15:27:11 2000
@@ -36,7 +36,7 @@
  */
 #include "sh.h"
 
-RCSID("$Id: patch-sh.dol.c,v 1.1 2000/11/15 15:57:04 brad Exp $")
+RCSID("$Id: patch-sh.dol.c,v 1.1 2000/11/15 15:57:04 brad Exp $")
 
 /*
  * C shell
@@ -1017,7 +1017,7 @@
 heredoc(term)
     Char   *term;
 {
-    register int c;
+    int c;
     Char   *Dv[2];
     Char    obuf[BUFSIZE], lbuf[BUFSIZE], mbuf[BUFSIZE];
     int     ocnt, lcnt, mcnt;
@@ -1025,7 +1025,9 @@
     Char  **vp;
     bool    quoted;
     char   *tmp;
+    struct timeval tv;
 
+again:
     tmp = short2str(shtemp);
 #ifndef O_CREAT
 # define O_CREAT 0
@@ -1036,9 +1038,19 @@
 #ifndef O_TEMPORARY
 # define O_TEMPORARY 0
 #endif
-    if (open(tmp, O_RDWR|O_CREAT|O_TEMPORARY) < 0) {
-	int     oerrno = errno;
-
+#ifndef O_EXCL
+# define O_EXCL 0
+#endif
+    if (open(tmp, O_RDWR|O_CREAT|O_EXCL|O_TEMPORARY) == -1) {
+	int oerrno = errno;
+	if (errno == EEXIST) {
+	    if (unlink(tmp) == -1) {
+		(void) gettimeofday(&tv, NULL);
+		shtemp = Strspl(STRtmpsh, putn((((int)tv.tv_sec) ^ 
+		    ((int)tv.tv_usec) ^ ((int)doldol)) & 0x00ffffff));
+	    }
+	    goto again;
+	}
 	(void) unlink(tmp);
 	errno = oerrno;
 	stderror(ERR_SYSTEM, tmp, strerror(errno));
