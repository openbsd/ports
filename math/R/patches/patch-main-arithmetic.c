$OpenBSD: patch-main-arithmetic.c,v 1.1.1.1 2001/03/22 03:26:32 ian Exp $

OpenBSD seems to be the only common platform that still hides the
"struct exception" definition in math.h unless you define __LIBM_PRIVATE.
But since this is a math interpreter and wants to be pretty chummy with
the mathlib, perhaps it is not such a bad thing for them to want to
diddle the struct exception object.

I changed the comment to remind that Arith.h includes math.h, since math.h
is *also* included in the expected Rmath.h, but the second inclusion (as
per most system header files) is a no-op.

													-- Ian

--- src/main/arithmetic.c.orig	Tue Mar  6 17:58:18 2001
+++ src/main/arithmetic.c	Tue Mar  6 18:27:38 2001
@@ -22,7 +22,9 @@
 #include <config.h>
 #endif
 
-#include "Defn.h"		/*-> Arith.h */
+#define __LIBM_PRIVATE	/* OpenBSD */
+#include "Defn.h"		/*-> Arith.h -> math.h */
+#undef __LIBM_PRIVATE	
 #define MATHLIB_PRIVATE
 #include <Rmath.h>
 #undef MATHLIB_PRIVATE
