$OpenBSD: patch-src_tools_qwebengine_convert_dict_qwebengine_convert_dict_pro,v 1.1 2020/05/16 07:03:01 rsadowski Exp $

Index: src/tools/qwebengine_convert_dict/qwebengine_convert_dict.pro
--- src/tools/qwebengine_convert_dict/qwebengine_convert_dict.pro.orig
+++ src/tools/qwebengine_convert_dict/qwebengine_convert_dict.pro
@@ -12,7 +12,7 @@ isEmpty(NINJA_LFLAGS): error("Missing linker flags fro
 isEmpty(NINJA_ARCHIVES): error("Missing archive files from QtWebEngineCore linking pri")
 isEmpty(NINJA_LIBS): error("Missing library files from QtWebEngineCore linking pri")
 OBJECTS = $$eval($$list($$NINJA_OBJECTS))
-linux {
+unix {
     LIBS_PRIVATE = -Wl,--start-group $$NINJA_ARCHIVES -Wl,--end-group
 } else {
     LIBS_PRIVATE = $$NINJA_ARCHIVES
