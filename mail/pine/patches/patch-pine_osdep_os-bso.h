$OpenBSD: patch-pine_osdep_os-bso.h,v 1.2 2001/09/27 16:52:40 brad Exp $
--- pine/osdep/os-bso.h.orig	Fri Sep 15 06:32:42 2000
+++ pine/osdep/os-bso.h	Fri Sep 15 06:32:55 2000
@@ -40,7 +40,7 @@
 #ifndef _OS_INCLUDED
 #define _OS_INCLUDED
 
-#include "../c-client/osdep.h"
+#include "c-client/osdep.h"
 
 
 /*----------------------------------------------------------------------
