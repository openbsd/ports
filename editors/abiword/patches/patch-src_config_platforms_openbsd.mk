--- src/config/platforms/openbsd.mk.orig	Mon Oct 16 20:30:37 2000
+++ src/config/platforms/openbsd.mk	Sun Feb 18 17:39:30 2001
@@ -30,8 +30,13 @@
 ## compiler/loader options are used.  It will probably also be used
 ## in constructing the name object file destination directory.
 
-OS_ARCH		:= $(shell uname -m | sed -e s/i.86/i386/ -e s/sun4u/sparc64/ -e s/arm.*/arm/ -e s/sa110/arm/ | sed "s/\//-/")
-OS_ENDIAN	= LittleEndian32
+OS_ARCH		:= $(shell uname -m)
+
+ifneq (,$(shell $(CC) -E - -dM </usr/include/machine/endian.h | grep BYTE_ORDER.*LITTLE_ENDIAN))
+OS_ENDIAN       = LittleEndian32
+else
+OS_ENDIAN       = BigEndian32
+endif
 
 # Define tools
 CC		= gcc
@@ -56,8 +61,8 @@
 endif
 
 # Includes
-OS_INCLUDES		=
-G++INCLUDES		= -I/usr/include/g++
+OS_INCLUDES		= -I$(ABI_ROOT)/../libiconv/include
+G++INCLUDES		= -I$(ABI_ROOT)/../libiconv/include -I/usr/include/g++
 
 # Compiler flags
 PLATFORM_FLAGS		= -pipe -DOPENBSD -DOpenBSD
@@ -93,8 +98,10 @@
 ABI_NATIVE	= unix
 ABI_FE		= Unix
 
+ABIPKGDIR	= freebsd
+
 # End of OpenBSD defs
 
 ABIPKGDIR	= openbsd
 
-__OpenBSD__ = 1
+__OpenBSD__ = 1
