$OpenBSD: patch-lib_iconv.c,v 1.2 2008/07/11 11:40:33 brad Exp $
--- lib/iconv.c.orig	Wed May 28 08:41:11 2008
+++ lib/iconv.c	Thu Jul  3 04:19:09 2008
@@ -137,7 +137,7 @@ static size_t sys_iconv(void *cd, 
 			char **outbuf, size_t *outbytesleft)
 {
 	size_t ret = iconv((iconv_t)cd, 
-			   (char **)inbuf, inbytesleft, 
+			   inbuf, inbytesleft, 
 			   outbuf, outbytesleft);
 	if (ret == (size_t)-1) {
 		int saved_errno = errno;
