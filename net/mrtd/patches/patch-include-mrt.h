--- include/mrt.h.orig	Fri Apr 30 17:46:54 1999
+++ include/mrt.h	Fri Apr 14 12:24:43 2000
@@ -506,7 +506,7 @@
 #endif /* HAVE_INET_NTOP */
 #ifndef HAVE_MEMMOVE
 /*char *memmove (void *dest, const void *src, size_t n);*/
-char *memmove (char *dest, const char *src, size_t n);
+void *memmove (void *dest, const void *src, size_t n);
 #endif /* HAVE_MEMMOVE */
 
 int atox (char *str);
