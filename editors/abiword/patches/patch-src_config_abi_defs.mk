--- src/config/abi_defs.mk.orig	Fri Jun  9 18:48:49 2000
+++ src/config/abi_defs.mk	Sun Jul 16 05:24:11 2000
@@ -419,6 +419,9 @@
 EXTRA_LIBS	+=	$(GTK_LIBS)
 ABI_OPTIONS+=Gnome:Off
 endif
+
+# Refer to installed packages
+CFLAGS		+=	-I/usr/local/include -I/usr/local/include/xml
 endif
 
 ##################################################################
