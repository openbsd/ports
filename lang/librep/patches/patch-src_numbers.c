--- src/numbers.c.orig	Tue Nov 14 06:52:02 2000
+++ src/numbers.c	Sun Feb  4 10:38:00 2001
@@ -68,7 +68,7 @@ DEFSTRING(domain_error, "Domain error");
 #  define LONG_LONG_MIN LONGLONG_MIN
 #  define LONG_LONG_MAX LONGLONG_MAX
 # elif defined (LLONG_MIN)
-   /* Solaris uses LLONG_ */
+   /* Solaris and OpenBSD use LLONG_ */
 #  define LONG_LONG_MIN LLONG_MIN
 #  define LONG_LONG_MAX LLONG_MAX
 # endif
