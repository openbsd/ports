--- src/numbers.c.orig	Mon Oct  7 09:42:09 2002
+++ src/numbers.c	Mon Jan  2 23:17:26 2006
@@ -70,7 +70,7 @@ DEFSTRING(domain_error, "Domain error");
 #  define LONG_LONG_MIN LONGLONG_MIN
 #  define LONG_LONG_MAX LONGLONG_MAX
 # elif defined (LLONG_MIN)
-   /* Solaris uses LLONG_ */
+   /* Solaris and OpenBSD use LLONG_ */
 #  define LONG_LONG_MIN LLONG_MIN
 #  define LONG_LONG_MAX LLONG_MAX
 # endif
