$OpenBSD: patch-lib_cache.c,v 1.1 2000/08/03 00:03:21 brad Exp $

This patch fixes a problem with the SOCKS client library for dup().
The ftp client uses dup().

--- lib/cache.c.orig	Wed Aug  2 19:06:02 2000
+++ lib/cache.c	Wed Aug  2 19:06:34 2000
@@ -26,8 +26,8 @@
     lsProxyInfo *n, *p = *pp;
     
     for (n = p?p->next:NULL; p ; p = n, n = n?n->next:NULL) {
-	if (--(p->refcount) > 0) continue;
 	if (p->cinfo.fd == rfd) p->cinfo.fd = S5InvalidIOHandle;
+	if (--(p->refcount) > 0) continue;
 	S5BufCleanContext(&p->cinfo);
 	free(p);
     }
