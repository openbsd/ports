--- iodev/serial.cc.orig	Sat Mar 25 21:28:49 2000
+++ iodev/serial.cc	Tue Oct 17 12:04:02 2000
@@ -31,10 +31,12 @@
 
 // define USE_TTY_HACK to connect an xterm or similar (depends on tty.c)
 // to the serial port /AM
+// #define USE_TTY_HACK
+// #define USE_RAW_SERIAL
 
 #include "bochs.h"
 
-#if USE_RAW_SERIAL
+#if defined(USE_RAW_SERIAL)
 #include <signal.h>
 #endif
 
@@ -47,7 +49,7 @@
 #endif
 
 
-#ifdef __FreeBSD__
+#if defined(__FreeBSD__) || defined(__OpenBSD__)
 extern "C" {
 #include <termios.h>
 };
@@ -58,7 +60,7 @@ bx_serial_c bx_serial;
 #define this (&bx_serial)
 #endif
 
-#ifdef __FreeBSD__
+#if defined(__FreeBSD__) || defined(__OpenBSD__)
 static struct termios term_orig, term_new;
 #endif
 
@@ -66,7 +68,7 @@ static int tty_id;
 
 bx_serial_c::bx_serial_c(void)
 {
-#ifdef __FreeBSD__
+#if defined(__FreeBSD__) || defined(__OpenBSD__)
   tcgetattr(0, &term_orig);
   bcopy((caddr_t) &term_orig, (caddr_t) &term_new, sizeof(struct termios));
   cfmakeraw(&term_new);
@@ -85,18 +87,19 @@ bx_serial_c::bx_serial_c(void)
   tcsetattr(0, TCSAFLUSH, &term_new);
 #endif
   // nothing for now
-#if USE_RAW_SERIAL
-  raw = new serial_raw("/dev/cua0", SIGUSR1);
+#if defined(USE_RAW_SERIAL)
+  /* raw = new bx_serial_raw("/dev/cua0", SIGUSR1); */
+  raw = new bx_serial_raw("/dev/ttyq6", SIGUSR1);
 #endif // USE_RAW_SERIAL
 }
 
 bx_serial_c::~bx_serial_c(void)
 {
-#ifdef __FreeBSD__
+#if defined(__FreeBSD__) || defined(__OpenBSD__)
   tcsetattr(0, TCSAFLUSH, &term_orig);
 #endif
   // nothing for now
-#if USE_RAW_SERIAL
+#if defined(USE_RAW_SERIAL)
   delete raw;
 #endif // USE_RAW_SERIAL
 }
@@ -106,17 +109,18 @@ bx_serial_c::~bx_serial_c(void)
 bx_serial_c::init(bx_devices_c *d)
 {
   BX_SER_THIS devices = d;
+  bio->printf("serial\n");
 
   BX_SER_THIS devices->register_irq(4, "Serial Port 1");
 
 #if defined (USE_TTY_HACK)
   tty_id = tty_alloc("Bx Serial Console, Your Window to the 8250");
   if (tty_id > 0)
-    bx_printf("TTY Allocated fd = %d\n", tty_get_fd(tty_id));
+    bio->printf("TTY Allocated fd = %d\n", tty_get_fd(tty_id));
   else
-    bx_printf("TTY allocation failed\n");
+    bio->printf("TTY allocation failed\n");
 #else
-  bx_printf("TTY not used, serial port is not connected\n");
+  bio->printf("TTY not used, serial port is not connected\n");
 #endif
 
   /*
@@ -235,12 +239,12 @@ bx_serial_c::read(Bit32u address, unsign
   /* SERIAL PORT 1 */
 
   if (io_len > 1)
-    bx_panic("serial: io read from port %04x, bad len=%u\n",
+    bio->panic("serial: io read from port %04x, bad len=%u\n",
 	     (unsigned) address,
              (unsigned) io_len);
 
-  if (bx_dbg.serial)
-    bx_printf("serial register read from address 0x%x - ",
+  if (bio->getdbg().serial)
+    bio->printf("serial register read from address 0x%x - ",
 	      (unsigned) address);
 
   switch (address) {
@@ -346,13 +350,13 @@ bx_serial_c::read(Bit32u address, unsign
 
     default:
       val = 0; // keep compiler happy
-      bx_panic("unsupported serial io read from address=%0x%x!\n",
+      bio->panic("unsupported serial io read from address=%0x%x!\n",
         (unsigned) address);
       break;
   }
 
-  if (bx_dbg.serial)
-    bx_printf("val =  0x%x\n",
+  if (bio->getdbg().serial)
+    bio->printf("val =  0x%x\n",
 	      (unsigned) val);
 
   return(val);
@@ -381,11 +385,11 @@ bx_serial_c::write(Bit32u address, Bit32
   /* SERIAL PORT 1 */
 
   if (io_len > 1)
-    bx_panic("serial: io write to address %08x len=%u\n",
+    bio->panic("serial: io write to address %08x len=%u\n",
              (unsigned) address, (unsigned) io_len);
 
-  if (bx_dbg.serial)
-    bx_printf("serial: write to address: 0x%x = 0x%x\n",
+  if (bio->getdbg().serial)
+    bio->printf("serial: write to address: 0x%x = 0x%x\n",
 	      (unsigned) address, (unsigned) value);
 
   switch (address) {
@@ -397,7 +401,7 @@ bx_serial_c::write(Bit32u address, Bit32
 	  BX_SER_THIS s[0].baudrate = (int) (BX_PC_CLOCK_XTL /
 			  (16 * ((BX_SER_THIS s[0].divisor_msb << 8) |
 				 BX_SER_THIS s[0].divisor_lsb)));
-#if USE_RAW_SERIAL
+#if defined(USE_RAW_SERIAL)
 	  BX_SER_THIS raw->set_baudrate(BX_SER_THIS s[0].baudrate);
 #endif // USE_RAW_SERIAL
 	}
@@ -418,7 +422,7 @@ bx_serial_c::write(Bit32u address, Bit32
 		 (int) (1000000.0 / (BX_SER_THIS s[0].baudrate / 8)),
 				      0); /* not continuous */
 	} else {
-	  bx_printf("serial: write to tx hold register when not empty\n");
+	  bio->printf("serial: write to tx hold register when not empty\n");
 	}
       }
       break;
@@ -431,7 +435,7 @@ bx_serial_c::write(Bit32u address, Bit32
 	  BX_SER_THIS s[0].baudrate = (int) (BX_PC_CLOCK_XTL /
 		       (16 * ((BX_SER_THIS s[0].divisor_msb << 8) |
 			      BX_SER_THIS s[0].divisor_lsb)));
-#if USE_RAW_SERIAL
+#if defined(USE_RAW_SERIAL)
 	  BX_SER_THIS raw->set_baudrate(BX_SER_THIS s[0].baudrate);
 #endif // USE_RAW_SERIAL
 	}
@@ -448,13 +452,13 @@ bx_serial_c::write(Bit32u address, Bit32
       break;
 
     case 0x03FB: /* Line control register */
-#if !USE_RAW_SERIAL
+#if !defined(USE_RAW_SERIAL)
       if ((value & 0x3) != 0x3) {
 	/* ignore this: this is set by FreeBSD when the console
 	   code wants to set DLAB */
       }
 #endif // !USE_RAW_SERIAL
-#if USE_RAW_SERIAL
+#if defined(USE_RAW_SERIAL)
       if (BX_SER_THIS s[0].line_cntl.wordlen_sel != (value & 0x3)) {
 	    BX_SER_THIS raw->set_data_bits((value & 0x3) + 5);
       }
@@ -466,12 +470,12 @@ bx_serial_c::write(Bit32u address, Bit32
 	  BX_SER_THIS s[0].line_cntl.stick_parity != (value & 0x20) >> 5) {
 	    if (((value & 0x20) >> 5) &&
 		((value & 0x8) >> 3))
-		  bx_panic("[serial] sticky parity set and parity enabled");
+		  bio->panic("[serial] sticky parity set and parity enabled");
 	    BX_SER_THIS raw->set_parity_mode(((value & 0x8) >> 3),
-					     ((value & 0x10) >> 4) ? P_EVEN : P_ODD);
+					     ((value & 0x10) >> 4) ? PAREVEN : PARODD);
       }
       if (BX_SER_THIS s[0].line_cntl.break_cntl && !((value & 0x40) >> 6)) {
-	    BX_SER_THIS raw->transmit(C_BREAK);
+	    BX_SER_THIS raw->transmit(CBREAK);
       }
 #endif // USE_RAW_SERIAL
 
@@ -494,8 +498,8 @@ bx_serial_c::write(Bit32u address, Bit32
 		      (int) (1000000.0 / (BX_SER_THIS s[0].baudrate / 4)),
 				      0); /* not continuous */
 	}
-	if (bx_dbg.serial) {
-	  bx_printf("serial: baud rate set - %d\n", BX_SER_THIS s[0].baudrate);
+	if (bio->getdbg().serial) {
+	  bio->printf("serial: baud rate set - %d\n", BX_SER_THIS s[0].baudrate);
 	}
       }
       BX_SER_THIS s[0].line_cntl.dlab = (value & 0x80) >> 7;
@@ -503,7 +507,7 @@ bx_serial_c::write(Bit32u address, Bit32
  	
     case 0x03FC: /* MODEM control register */
       if ((value & 0x01) == 0) {
-#if USE_RAW_SERIAL
+#if defined(USE_RAW_SERIAL)
 	BX_SER_THIS raw->send_hangup();
 #endif
       }
@@ -530,12 +534,12 @@ bx_serial_c::write(Bit32u address, Bit32
 
     case 0x03FD: /* Line status register */
       /* XXX ignore ?  */
-      bx_panic("serial: write to line status register\n");
+      bio->panic("serial: write to line status register\n");
       break;
 
     case 0x03FE: /* MODEM status register */
       /* XXX ignore ?  */
-      bx_panic("serial: write to MODEM status register\n");
+      bio->panic("serial: write to MODEM status register\n");
       break;
 
     case 0x03FF: /* scratch register */
@@ -543,7 +547,7 @@ bx_serial_c::write(Bit32u address, Bit32
       break;
 
     default:
-      bx_panic("unsupported serial io write to address=0x%x, value = 0x%x!\n",
+      bio->panic("unsupported serial io write to address=0x%x, value = 0x%x!\n",
         (unsigned) address, (unsigned) value);
       break;
   }
@@ -582,9 +586,9 @@ bx_serial_c::tx_timer(void)
   } else {
 #if defined (USE_TTY_HACK)
     tty(tty_id, 0, & BX_SER_THIS s[0].txbuffer);
-#elif USE_RAW_SERIAL
+#elif defined(USE_RAW_SERIAL)
     if (!BX_SER_THIS raw->ready_transmit())
-	  bx_panic("[serial] Not ready to transmit");
+	  bio->panic("[serial] Not ready to transmit");
     BX_SER_THIS raw->transmit(BX_SER_THIS s[0].txbuffer);
 #elif 0
     write(0, (bx_ptr_t) & BX_SER_THIS s[0].txbuffer, 1);
@@ -634,13 +638,13 @@ bx_serial_c::rx_timer(void)
 #if defined (USE_TTY_HACK)
     if (tty_prefetch_char(tty_id)) {
       tty(tty_id, 1, &chbuf);
-#elif USE_RAW_SERIAL
+#elif defined(USE_RAW_SERIAL)
     Boolean rdy;
     uint16 data;
     if ((rdy = BX_SER_THIS raw->ready_receive())) {
       data = BX_SER_THIS raw->receive();
-      if (data == C_BREAK) {
-	    bx_printf("[serial] Got BREAK\n");
+      if (data == CBREAK) {
+	    bio->printf("[serial] Got BREAK\n");
 	    BX_SER_THIS s[0].line_status.break_int = 1;
 	    rdy = 0;
       }
