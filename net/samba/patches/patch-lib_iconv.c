$OpenBSD: patch-lib_iconv.c,v 1.1 2007/12/14 08:53:27 mbalmer Exp $
--- lib/iconv.c.orig	Tue Jun  5 01:45:05 2007
+++ lib/iconv.c	Tue Jun  5 01:46:09 2007
@@ -137,7 +137,7 @@
 			char **outbuf, size_t *outbytesleft)
 {
 	size_t ret = iconv((iconv_t)cd, 
-			   (char **)inbuf, inbytesleft, 
+			   inbuf, inbytesleft, 
 			   outbuf, outbytesleft);
 	if (ret == (size_t)-1) {
 		int saved_errno = errno;
