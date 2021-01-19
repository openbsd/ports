$OpenBSD: patch-src_core_api_core_api_pro,v 1.2 2021/01/19 06:16:35 rsadowski Exp $

Index: src/core/api/core_api.pro
--- src/core/api/core_api.pro.orig
+++ src/core/api/core_api.pro
@@ -67,7 +67,7 @@ SOURCES = \
     qwebengineurlschemehandler.cpp
 
 ### Qt6 Remove this workaround
-unix:!isEmpty(QMAKE_LFLAGS_VERSION_SCRIPT):!static {
+linux:!isEmpty(QMAKE_LFLAGS_VERSION_SCRIPT):!static {
     SOURCES += qtbug-60565.cpp \
                qtbug-61521.cpp
 }
