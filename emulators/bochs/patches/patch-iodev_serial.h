--- iodev/serial.h.orig	Sat Mar 25 21:35:31 2000
+++ iodev/serial.h	Fri Apr  6 10:23:41 2001
@@ -24,7 +24,7 @@
 // Peter Grehan (grehan@iprg.nokia.com) coded most of this
 // serial emulation.
 
-#if USE_RAW_SERIAL
+#if defined(USE_RAW_SERIAL)
 #include "serial_raw.h"
 #endif // USE_RAW_SERIAL
 
@@ -146,7 +146,8 @@ public:
   BX_SER_SMF void   init(bx_devices_c *);
 
 private:
-    bx_serial_t s[BX_SERIAL_MAXDEV];
+  int fd;
+  bx_serial_t s[BX_SERIAL_MAXDEV];
 
   bx_devices_c *devices;
 
@@ -162,8 +163,8 @@ private:
   Bit32u read(Bit32u address, unsigned io_len);
   void   write(Bit32u address, Bit32u value, unsigned io_len);
 #endif
-#if USE_RAW_SERIAL
-  serial_raw* raw;
+#if defined(USE_RAW_SERIAL)
+  bx_serial_raw* raw;
 #endif // USE_RAW_SERIAL
   };
 
