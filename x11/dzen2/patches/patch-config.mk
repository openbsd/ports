--- config.mk.orig	Sat Aug 18 08:18:50 2007
+++ config.mk	Wed Sep  5 17:25:20 2007
@@ -19,8 +19,8 @@ INCS = -I. -I/usr/include -I${X11INC}
 # Comment  : Add # to the beginning of the respective lines
 
 # Option 1: No Xinerama no XPM
-LIBS = -L/usr/lib -lc -L${X11LIB} -lX11
-CFLAGS = -Os ${INCS} -DVERSION=\"${VERSION}\"
+#LIBS = -L/usr/lib -lc -L${X11LIB} -lX11
+#CFLAGS = -Os ${INCS} -DVERSION=\"${VERSION}\"
 
 # Option 2: No Xinerama with XPM
 #LIBS = -L/usr/lib -lc -L${X11LIB} -lX11 -lXpm
@@ -31,8 +31,8 @@ CFLAGS = -Os ${INCS} -DVERSION=\"${VERSION}\"
 #CFLAGS = -Os ${INCS} -DVERSION=\"${VERSION}\" -DDZEN_XINERAMA
 
 # Option 4: With Xinerama and XPM
-#LIBS = -L/usr/lib -lc -L${X11LIB} -lX11 -lXinerama -lXpm
-#CFLAGS = -Os ${INCS} -DVERSION=\"${VERSION}\" -DDZEN_XINERAMA -DDZEN_XPM
+LIBS = -L/usr/lib -lc -L${X11LIB} -lX11 -lXinerama -lXpm
+CFLAGS = -Os ${INCS} -DVERSION=\"${VERSION}\" -DDZEN_XINERAMA -DDZEN_XPM
 
 # END of feature configuration
 
