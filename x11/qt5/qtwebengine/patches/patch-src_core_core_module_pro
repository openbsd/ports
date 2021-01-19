$OpenBSD: patch-src_core_core_module_pro,v 1.2 2021/01/19 06:16:35 rsadowski Exp $

Index: src/core/core_module.pro
--- src/core/core_module.pro.orig
+++ src/core/core_module.pro
@@ -41,8 +41,6 @@ QMAKE_INFO_PLIST = Info_mac.plist
 # and doesn't let Chromium get access to libc symbols through dlsym.
 CONFIG -= bsymbolic_functions
 
-linux:qtConfig(separate_debug_info): QMAKE_POST_LINK="cd $(DESTDIR) && $(STRIP) --strip-unneeded $(TARGET)"
-
 REPACK_DIR = $$OUT_PWD/$$getConfigDir()
 
 # Duplicated from resources/resources.gyp
