--- dict/dawg.cpp.orig	Tue Oct  5 20:36:06 2010
+++ dict/dawg.cpp	Tue Oct  5 20:36:37 2010
@@ -29,6 +29,10 @@
 #ifdef _MSC_VER
 #pragma warning(disable:4244)  // Conversion warnings
 #pragma warning(disable:4800)  // int/bool warnings
+#else
+#ifdef __OpenBSD__
+#include <sys/types.h>
+#endif
 #endif
 #include "dawg.h"
 
