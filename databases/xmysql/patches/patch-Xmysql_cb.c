# $OpenBSD: patch-Xmysql_cb.c,v 1.1 2000/04/09 09:13:22 turan Exp $

--- Xmysql_cb.c.orig	Tue Sep  2 16:08:23 1997
+++ Xmysql_cb.c	Tue Sep  2 16:09:08 1997
@@ -1,5 +1,11 @@
 #include <string.h>
+
+#if defined(__FreeBSD__) || defined(__OpenBSD__)
+#include <stdlib.h>
+#else
 #include <malloc.h>
+#endif
+
 #include "forms.h"
 #include "Xmysql.h"
 #include "XmysqlDB.h"
