--- kdoctools/libxslt/templates.c.orig	Tue Nov  6 15:15:22 2001
+++ kdoctools/libxslt/templates.c	Tue Nov  6 15:15:37 2001
@@ -15,6 +15,7 @@
 
 #include <libxml/xmlmemory.h>
 #include <libxml/tree.h>
+#include <libxml/globals.h>
 #include <libxml/xmlerror.h>
 #include <libxml/xpathInternals.h>
 #include <libxml/parserInternals.h>
