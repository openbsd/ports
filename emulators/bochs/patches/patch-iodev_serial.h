--- iodev/serial.h.orig	Wed Oct  4 11:15:45 2000
+++ iodev/serial.h	Wed Oct  4 11:16:51 2000
@@ -24,7 +24,7 @@
 // Peter Grehan (grehan@iprg.nokia.com) coded most of this
 // serial emulation.
 
-#if USE_RAW_SERIAL
+#if defined(USE_RAW_SERIAL)
 #include "serial_raw.h"
 #endif // USE_RAW_SERIAL
 
@@ -162,8 +162,8 @@ private:
   Bit32u read(Bit32u address, unsigned io_len);
   void   write(Bit32u address, Bit32u value, unsigned io_len);
 #endif
-#if USE_RAW_SERIAL
-  serial_raw* raw;
+#if defined(USE_RAW_SERIAL)
+  bx_serial_raw* raw;
 #endif // USE_RAW_SERIAL
   };
 
