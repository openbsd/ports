--- iodev/harddrv.cc.orig	Sat Mar 25 21:28:49 2000
+++ iodev/harddrv.cc	Thu Oct 19 10:25:12 2000
@@ -103,10 +103,11 @@ bx_hard_drive_c::init(bx_devices_c *d, b
   BX_HD_THIS s[1].hard_drive->cylinders = bx_options.diskd.cylinders;
   BX_HD_THIS s[1].hard_drive->heads     = bx_options.diskd.heads;
   BX_HD_THIS s[1].hard_drive->sectors   = bx_options.diskd.spt;
+  BX_HD_THIS s[1].device_type           = IDE_DISK;
 
   if (bx_options.cdromd.present) {
 	bx_options.diskd.present = 1;
-	fprintf(stderr, "disk: Experimental CDROM on target 1\n");
+	bio->printf("[HDD] Experimental CDROM on target 1\n");
 	BX_HD_THIS s[1].device_type = IDE_CDROM;
 	BX_HD_THIS s[1].cdrom.locked = 0;
 	BX_HD_THIS s[1].sense.sense_key = SENSE_NONE;
@@ -116,22 +117,22 @@ bx_hard_drive_c::init(bx_devices_c *d, b
 	BX_CONTROLLER(1).sector_count = 0;
 	BX_CONTROLLER(1).interrupt_reason.c_d = 1;
 	if (BX_CONTROLLER(1).sector_count != 0x01)
-	      bx_panic("disk: interrupt reason bit field error\n");
+	      bio->panic("[HDD] interrupt reason bit field error\n");
 
 	BX_CONTROLLER(1).sector_count = 0;
 	BX_CONTROLLER(1).interrupt_reason.i_o = 1;
 	if (BX_CONTROLLER(1).sector_count != 0x02)
-	      bx_panic("disk: interrupt reason bit field error\n");
+	      bio->panic("[HDD] interrupt reason bit field error\n");
 
 	BX_CONTROLLER(1).sector_count = 0;
 	BX_CONTROLLER(1).interrupt_reason.rel = 1;
 	if (BX_CONTROLLER(1).sector_count != 0x04)
-	      bx_panic("disk: interrupt reason bit field error\n");
+	      bio->panic("[HDD] interrupt reason bit field error\n");
 
 	BX_CONTROLLER(1).sector_count = 0;
 	BX_CONTROLLER(1).interrupt_reason.tag = 3;
 	if (BX_CONTROLLER(1).sector_count != 0x18)
-	      bx_panic("disk: interrupt reason bit field error\n");
+	      bio->panic("[HDD] interrupt reason bit field error\n");
 	BX_CONTROLLER(1).sector_count = 0;
 
 	// allocate low level driver
@@ -142,36 +143,34 @@ bx_hard_drive_c::init(bx_devices_c *d, b
 #ifdef LOWLEVEL_CDROM
 	if (bx_options.cdromd.inserted) {
 	      if (BX_HD_THIS s[1].cdrom.cd->insert_cdrom()) {
-		    fprintf(stderr, "disk: Media present in CD-ROM drive\n");
+		    bio->printf("[HDD] Media present in CD-ROM drive\n");
 		    BX_HD_THIS s[1].cdrom.ready = 1;
 		    BX_HD_THIS s[1].cdrom.capacity = BX_HD_THIS s[1].cdrom.cd->capacity();
 	      } else {		    
-		    fprintf(stderr, "disk: Could not locate CD-ROM, continuing with media not present\n");
+		    bio->printf("[HDD] Could not locate CD-ROM, continuing with media not present\n");
 		    BX_HD_THIS s[1].cdrom.ready = 0;
 	      }
 	} else {
 #endif
-	      fprintf(stderr, "disk: Media not present in CD-ROM drive\n");
+	      bio->printf("[HDD] Media not present in CD-ROM drive\n");
 	      BX_HD_THIS s[1].cdrom.ready = 0;
 #ifdef LOWLEVEL_CDROM
 	}
 #endif
-  } else {
-	BX_HD_THIS s[1].device_type = IDE_DISK;
   }
 
   /* open hard drive image file */
   if (bx_options.diskc.present) {
-	bx_printf("Opening image for device 0\n");
+	bio->printf("[HDD] Opening image for device 0: '%s'\n",bx_options.diskc.path);
 	if ((BX_HD_THIS s[0].hard_drive->open(bx_options.diskc.path)) < 0) {
-	      bx_panic("could not open hard drive image file '%s'\n",
+	      bio->panic("could not open hard drive image file '%s'\n",
 		       bx_options.diskc.path);
 	}
   }
   if (bx_options.diskd.present && !bx_options.cdromd.present) {
-	bx_printf("Opening image for device 1\n");
+	bio->printf("[HDD] Opening image for device 1: '%s'\n",bx_options.diskd.path);
 	if ((BX_HD_THIS s[1].hard_drive->open(bx_options.diskd.path)) < 0) {
-	      bx_panic("could not open hard drive image file '%s'\n",
+	      bio->panic("could not open hard drive image file '%s'\n",
 		       bx_options.diskd.path);
 	}
   }
@@ -264,24 +263,24 @@ bx_hard_drive_c::read(Bit32u address, un
   Bit32u value32;
 
   if (io_len==2 && address!=0x1f0) {
-    bx_panic("disk: non-byte IO read to %04x\n", (unsigned) address);
+    bio->panic("[HDD] non-byte IO read to %04x\n", (unsigned) address);
     }
 
   switch (address) {
     case 0x1f0: // hard disk data (16bit)
       if (BX_SELECTED_CONTROLLER.status.drq == 0) {
-	    bx_panic("disk: IO read(1f0h) with drq == 0: last command was %02xh\n",
+	    bio->panic("[HDD] IO read(1f0h) with drq == 0: last command was %02xh\n",
 		     (unsigned) BX_SELECTED_CONTROLLER.current_command);
       }
       switch (BX_SELECTED_CONTROLLER.current_command) {
         case 0x20: // read sectors, with retries
         case 0x21: // read sectors, without retries
           if (io_len != 2) {
-            bx_panic("disk: non-word IO read from %04x\n",
+            bio->panic("[HDD] non-word IO read from %04x\n",
                      (unsigned) address);
             }
           if (BX_SELECTED_CONTROLLER.buffer_index >= 512)
-            bx_panic("disk: IO read(1f0): buffer_index >= 512\n");
+            bio->panic("[HDD] IO read(1f0): buffer_index >= 512\n");
           value16  = BX_SELECTED_CONTROLLER.buffer[BX_SELECTED_CONTROLLER.buffer_index];
           value16 |= (BX_SELECTED_CONTROLLER.buffer[BX_SELECTED_CONTROLLER.buffer_index+1] << 8);
           BX_SELECTED_CONTROLLER.buffer_index += 2;
@@ -321,11 +320,11 @@ bx_hard_drive_c::read(Bit32u address, un
 	      ret = BX_SELECTED_HD.hard_drive->lseek(logical_sector * 512, SEEK_SET);
 
               if (ret < 0)
-                bx_panic("disk: could lseek() hard drive image file\n");
+                bio->panic("[HDD] could lseek() hard drive image file\n");
 	      ret = BX_SELECTED_HD.hard_drive->read((bx_ptr_t) BX_SELECTED_CONTROLLER.buffer, 512);
               if (ret < 512) {
-                bx_printf("logical sector was %u\n", (unsigned) logical_sector);
-                bx_panic("disk: could not read() hard drive image file\n");
+                bio->printf("[HDD] logical sector was %u\n", (unsigned) logical_sector);
+                bio->panic("[HDD] could not read() hard drive image file\n");
                 }
 
               BX_SELECTED_CONTROLLER.buffer_index = 0;
@@ -363,8 +362,8 @@ bx_hard_drive_c::read(Bit32u address, un
 
             if (BX_SELECTED_CONTROLLER.buffer_index >= 512) {
               BX_SELECTED_CONTROLLER.status.drq = 0;
-	      if (bx_dbg.disk || (CDROM_SELECTED && bx_dbg.cdrom))
-		    bx_printf ("disk: Read all drive ID Bytes ...\n");
+	      if (bio->getdbg().disk || (CDROM_SELECTED && bio->getdbg().cdrom))
+		    bio->printf ("[HDD] Read all drive ID Bytes ...\n");
               }
 	    if (io_len == 1) {
 		  value8 = (Bit8u)value32;
@@ -377,7 +376,7 @@ bx_hard_drive_c::read(Bit32u address, un
             }
 	  }
           else
-            bx_panic("disk: IO read(1f0h): current command is %02xh\n",
+            bio->panic("[HDD] IO read(1f0h): current command is %02xh\n",
               (unsigned) BX_SELECTED_CONTROLLER.current_command);
 
 	    case 0xa0: {
@@ -386,7 +385,7 @@ bx_hard_drive_c::read(Bit32u address, un
 		  // Load block if necessary
 		  if (index >= 2048) {
 			if (index > 2048)
-			      bx_panic("disk: index > 2048\n");
+			      bio->panic("[HDD] index > 2048\n");
 			switch (BX_SELECTED_HD.atapi.command) {
 			      case 0x28: // read (10)
 			      case 0xa8: // read (12)
@@ -396,11 +395,11 @@ bx_hard_drive_c::read(Bit32u address, un
 				    BX_SELECTED_HD.cdrom.next_lba++;
 				    BX_SELECTED_HD.cdrom.remaining_blocks--;
 
-				    if (bx_dbg.disk || (CDROM_SELECTED && bx_dbg.cdrom))
+				    if (bio->getdbg().disk || (CDROM_SELECTED && bio->getdbg().cdrom))
 					  if (!BX_SELECTED_HD.cdrom.remaining_blocks)
-						bx_printf("disk: Last READ block loaded {CDROM}\n");
+						bio->printf("[HDD] Last READ block loaded {CDROM}\n");
 					  else
-						bx_printf("disk: READ block loaded (%d remaining) {CDROM}\n",
+						bio->printf("[HDD] READ block loaded (%d remaining) {CDROM}\n",
 							  BX_SELECTED_HD.cdrom.remaining_blocks);
 
 				    // one block transfered
@@ -408,7 +407,7 @@ bx_hard_drive_c::read(Bit32u address, un
 				    BX_SELECTED_HD.atapi.total_bytes_remaining -= 2048;
 				    index = 0;
 #else
-				    bx_panic("Read with no LOWLEVEL_CDROM\n");
+				    bio->panic("Read with no LOWLEVEL_CDROM\n");
 #endif
 				    break;
 
@@ -437,8 +436,8 @@ bx_hard_drive_c::read(Bit32u address, un
 
 			if (BX_SELECTED_HD.atapi.total_bytes_remaining > 0) {
 			      // one or more blocks remaining (works only for single block commands)
-			      if (bx_dbg.disk || (CDROM_SELECTED && bx_dbg.cdrom))
-				    bx_printf("disk: PACKET drq bytes read\n");
+			      if (bio->getdbg().disk || (CDROM_SELECTED && bio->getdbg().cdrom))
+				    bio->printf("[HDD] PACKET drq bytes read\n");
 			      BX_SELECTED_CONTROLLER.interrupt_reason.i_o = 1;
 			      BX_SELECTED_CONTROLLER.status.busy = 0;
 			      BX_SELECTED_CONTROLLER.status.drq = 1;
@@ -453,8 +452,8 @@ bx_hard_drive_c::read(Bit32u address, un
 			      raise_interrupt();
 			} else {
 			      // all bytes read
-			      if (bx_dbg.disk || (CDROM_SELECTED && bx_dbg.cdrom))
-				    bx_printf("disk: PACKET all bytes read\n");
+			      if (bio->getdbg().disk || (CDROM_SELECTED && bio->getdbg().cdrom))
+				    bio->printf("[HDD] PACKET all bytes read\n");
 			      BX_SELECTED_CONTROLLER.interrupt_reason.i_o = 1;
 			      BX_SELECTED_CONTROLLER.interrupt_reason.c_d = 1;
 			      BX_SELECTED_CONTROLLER.status.drive_ready = 1;
@@ -479,7 +478,7 @@ bx_hard_drive_c::read(Bit32u address, un
 	    }
 
         default:
-          bx_panic("disk: IO read(1f0h): current command is %02xh\n",
+          bio->panic("[HDD] IO read(1f0h): current command is %02xh\n",
             (unsigned) BX_SELECTED_CONTROLLER.current_command);
         }
       break;
@@ -498,7 +497,10 @@ bx_hard_drive_c::read(Bit32u address, un
         value8 = BX_SELECTED_CONTROLLER.sector_count;
         goto return_value8;
         }
-      bx_panic("disk: IO read(0x1f2): current command not read/write\n");
+      bio->printf("[HDD] IO read(0x1f2): current command(0x%x) not read/write\n",
+		BX_SELECTED_CONTROLLER.current_command);
+	value8 = BX_SELECTED_CONTROLLER.sector_count;
+	goto return_value8;
       break;
 
     case 0x1f3: // sector number
@@ -556,28 +558,28 @@ bx_hard_drive_c::read(Bit32u address, un
       break;
 
     default:
-      bx_panic("hard drive: io read to address %x unsupported\n",
+      bio->panic("[HDD] io read to address %x unsupported\n",
         (unsigned) address);
     }
 
-  bx_panic("hard drive: shouldnt get here!\n");
+  bio->panic("[HDD] shouldnt get here!\n");
   return(0);
 
   return_value32:
-  if (bx_dbg.disk || (CDROM_SELECTED && bx_dbg.cdrom))
-    bx_printf("disk: 32-bit read from %04x = %08x {%s}\n",
+  if (bio->getdbg().disk || (CDROM_SELECTED && bio->getdbg().cdrom))
+    bio->printf("[HDD] 32-bit read from %04x = %08x {%s}\n",
 	      (unsigned) address, value32, DEVICE_TYPE_STRING);
   return value32;
 
   return_value16:
-  if (bx_dbg.disk || (CDROM_SELECTED && bx_dbg.cdrom))
-    bx_printf("disk: 16-bit read from %04x = %04x {%s}\n",
+  if (bio->getdbg().disk || (CDROM_SELECTED && bio->getdbg().cdrom))
+    bio->printf("[HDD] 16-bit read from %04x = %04x {%s}\n",
 	      (unsigned) address, value16, DEVICE_TYPE_STRING);
   return value16;
 
   return_value8:
-  if (bx_dbg.disk || (CDROM_SELECTED && bx_dbg.cdrom))
-    bx_printf("disk: 8-bit read from %04x = %02x {%s}\n",
+  if (bio->getdbg().disk || (CDROM_SELECTED && bio->getdbg().cdrom))
+    bio->printf("[HDD] 8-bit read from %04x = %02x {%s}\n",
 	      (unsigned) address, value8, DEVICE_TYPE_STRING);
   return value8;
 }
@@ -606,45 +608,45 @@ bx_hard_drive_c::write(Bit32u address, B
   Boolean prev_control_reset;
 
   if (io_len==2 && address!=0x1f0) {
-    bx_panic("disk: non-byte IO write to %04x\n", (unsigned) address);
+    bio->panic("[HDD] non-byte IO write to %04x\n", (unsigned) address);
     }
 
-  if (bx_dbg.disk || (CDROM_SELECTED && bx_dbg.cdrom)) {
+  if (bio->getdbg().disk || (CDROM_SELECTED && bio->getdbg().cdrom)) {
 	switch (io_len) {
 	      case 1:
-		    bx_printf("disk: 8-bit write to %04x = %02x {%s}\n",
+		    bio->printf("[HDD] 8-bit write to %04x = %02x {%s}\n",
 			      (unsigned) address, (unsigned) value, DEVICE_TYPE_STRING);
 		    break;
 		    
 	      case 2:
-		    bx_printf("disk: 16-bit write to %04x = %04x {%s}\n",
+		    bio->printf("[HDD] 16-bit write to %04x = %04x {%s}\n",
 			      (unsigned) address, (unsigned) value, DEVICE_TYPE_STRING);
 		    break;
 
 	      case 4:
-		    bx_printf("disk: 32-bit write to %04x = %08x {%s}\n",
+		    bio->printf("[HDD] 32-bit write to %04x = %08x {%s}\n",
 			      (unsigned) address, (unsigned) value, DEVICE_TYPE_STRING);
 		    break;
 
 	      default:
-		    bx_printf("disk: unknown-size write to %04x = %08x {%s}\n",
+		    bio->printf("[HDD] unknown-size write to %04x = %08x {%s}\n",
 			      (unsigned) address, (unsigned) value, DEVICE_TYPE_STRING);
 		    break;
 	}
   }
 
-//bx_printf("disk: IO write to %04x = %02x\n",
+//bio->printf("[HDD] IO write to %04x = %02x\n",
 //      (unsigned) address, (unsigned) value);
 
   switch (address) {
     case 0x1f0:
       if (io_len != 2) {
-        bx_panic("disk: non-word IO read from %04x\n", (unsigned) address);
+        bio->panic("[HDD] non-word IO read from %04x\n", (unsigned) address);
         }
       switch (BX_SELECTED_CONTROLLER.current_command) {
         case 0x30:
           if (BX_SELECTED_CONTROLLER.buffer_index >= 512)
-            bx_panic("disk: IO write(1f0): buffer_index >= 512\n");
+            bio->panic("[HDD] IO write(1f0): buffer_index >= 512\n");
           BX_SELECTED_CONTROLLER.buffer[BX_SELECTED_CONTROLLER.buffer_index] = value;
           BX_SELECTED_CONTROLLER.buffer[BX_SELECTED_CONTROLLER.buffer_index+1] = (value >> 8);
           BX_SELECTED_CONTROLLER.buffer_index += 2;
@@ -658,11 +660,11 @@ bx_hard_drive_c::write(Bit32u address, B
 
 	    ret = BX_SELECTED_HD.hard_drive->lseek(logical_sector * 512, SEEK_SET);
             if (ret < 0)
-              bx_panic("disk: could lseek() hard drive image file\n");
+              bio->panic("[HDD] could lseek() hard drive image file\n");
 
 	    ret = BX_SELECTED_HD.hard_drive->write((bx_ptr_t) BX_SELECTED_CONTROLLER.buffer, 512);
             if (ret < 512)
-              bx_panic("disk: could not write() hard drive image file\n");
+              bio->panic("[HDD] could not write() hard drive image file\n");
 
             BX_SELECTED_CONTROLLER.buffer_index = 0;
 
@@ -699,7 +701,7 @@ bx_hard_drive_c::write(Bit32u address, B
 
 	    case 0xa0: // PACKET
 		  if (BX_SELECTED_CONTROLLER.buffer_index >= PACKET_SIZE)
-			bx_panic("disk: IO write(1f0): buffer_index >= PACKET_SIZE\n");
+			bio->panic("[HDD] IO write(1f0): buffer_index >= PACKET_SIZE\n");
 		  BX_SELECTED_CONTROLLER.buffer[BX_SELECTED_CONTROLLER.buffer_index] = value;
 		  BX_SELECTED_CONTROLLER.buffer[BX_SELECTED_CONTROLLER.buffer_index+1] = (value >> 8);
 		  BX_SELECTED_CONTROLLER.buffer_index += 2;
@@ -710,8 +712,8 @@ bx_hard_drive_c::write(Bit32u address, B
 			Bit8u atapi_command = BX_SELECTED_CONTROLLER.buffer[0];
 			int alloc_length;
 
-			if (bx_dbg.cdrom)
-				bx_printf("cdrom: ATAPI command 0x%x started\n", atapi_command);
+			if (bio->getdbg().cdrom)
+				bio->printf("[CDD]  ATAPI command 0x%x started\n", atapi_command);
 
 			switch (atapi_command) {
 			      case 0x00: // test unit ready
@@ -757,11 +759,11 @@ bx_hard_drive_c::write(Bit32u address, B
 				    Boolean Start = (BX_SELECTED_CONTROLLER.buffer[4] >> 0) & 1;
 
 				    if (!LoEj && !Start) { // stop the disc
-					  bx_panic("disk: Stop disc not implemented\n");
+					  bio->panic("[HDD] Stop disc not implemented\n");
 				    } else if (!LoEj && Start) { // start the disc and read the TOC
-					  bx_panic("disk: Start disc not implemented\n");
+					  bio->panic("[HDD] Start disc not implemented\n");
 				    } else if (LoEj && !Start) { // Eject the disc
-					  bx_panic("disk: Eject the disc not implemented\n");
+					  bio->panic("[HDD] Eject the disc not implemented\n");
 				    } else { // Load the disc
 					  // My guess is that this command only closes the tray, that's a no-op for us
 					  atapi_cmd_nop();
@@ -774,7 +776,7 @@ bx_hard_drive_c::write(Bit32u address, B
 				    uint16 alloc_length = read_16bit(BX_SELECTED_CONTROLLER.buffer + 8);
 
 				    if (alloc_length == 0)
-					  bx_panic("disk: Zero allocation length to MECHANISM STATUS not impl.\n");
+					  bio->panic("[HDD] Zero allocation length to MECHANISM STATUS not impl.\n");
 
 				    init_send_atapi_command(atapi_command, 8, alloc_length);
 
@@ -844,13 +846,13 @@ bx_hard_drive_c::write(Bit32u address, B
 						      case 0x0d: // CD-ROM
 						      case 0x0e: // CD-ROM audio control
 						      case 0x3f: // all
-							    bx_panic("cdrom: MODE SENSE (curr), code=%x\n",
+							    bio->panic("[CDD]  MODE SENSE (curr), code=%x\n",
 								     PageCode);
 							    break;
 
 						      default:
 							    // not implemeted by this device
-							    bx_printf("cdrom: MODE SENSE PC=%x, PageCode=%x,"
+							    bio->printf("[CDD]  MODE SENSE PC=%x, PageCode=%x,"
 								      " not implemented by device\n",
 								      PC, PageCode);
 							    atapi_cmd_error(SENSE_ILLEGAL_REQUEST,
@@ -867,13 +869,13 @@ bx_hard_drive_c::write(Bit32u address, B
 						      case 0x0e: // CD-ROM audio control
 						      case 0x2a: // CD-ROM capabilities & mech. status
 						      case 0x3f: // all
-							    bx_panic("cdrom: MODE SENSE (chg), code=%x\n",
+							    bio->panic("[CDD]  MODE SENSE (chg), code=%x\n",
 								     PageCode);
 							    break;
 
 						      default:
 							    // not implemeted by this device
-							    bx_printf("cdrom: MODE SENSE PC=%x, PageCode=%x,"
+							    bio->printf("[CDD]  MODE SENSE PC=%x, PageCode=%x,"
 								      " not implemented by device\n",
 								      PC, PageCode);
 							    atapi_cmd_error(SENSE_ILLEGAL_REQUEST,
@@ -890,13 +892,13 @@ bx_hard_drive_c::write(Bit32u address, B
 						      case 0x0e: // CD-ROM audio control
 						      case 0x2a: // CD-ROM capabilities & mech. status
 						      case 0x3f: // all
-							    bx_panic("cdrom: MODE SENSE (dflt), code=%x\n",
+							    bio->panic("[CDD]  MODE SENSE (dflt), code=%x\n",
 								     PageCode);
 							    break;
 
 						      default:
 							    // not implemeted by this device
-							    bx_printf("cdrom: MODE SENSE PC=%x, PageCode=%x,"
+							    bio->printf("[CDD]  MODE SENSE PC=%x, PageCode=%x,"
 								      " not implemented by device\n",
 								      PC, PageCode);
 							    atapi_cmd_error(SENSE_ILLEGAL_REQUEST,
@@ -912,7 +914,7 @@ bx_hard_drive_c::write(Bit32u address, B
 						break;
 
 					  default:
-						bx_panic("disk: Should not get here!\n");
+						bio->panic("[HDD] Should not get here!\n");
 						break;
 				    }
 			      }
@@ -958,7 +960,7 @@ bx_hard_drive_c::write(Bit32u address, B
 
 				    if (BX_SELECTED_HD.cdrom.ready) {
 					  uint32 capacity = BX_SELECTED_HD.cdrom.capacity;
-					  bx_printf("disk: Capacity is %d sectors (%d bytes)\n", capacity, capacity * 2048);
+					  bio->printf("[HDD] Capacity is %d sectors (%d bytes)\n", capacity, capacity * 2048);
 					  BX_SELECTED_CONTROLLER.buffer[0] = (capacity >> 24) & 0xff;
 					  BX_SELECTED_CONTROLLER.buffer[1] = (capacity >> 16) & 0xff;
 					  BX_SELECTED_CONTROLLER.buffer[2] = (capacity >> 8) & 0xff;
@@ -977,7 +979,7 @@ bx_hard_drive_c::write(Bit32u address, B
 
 			      case 0xbe: { // read cd
 				    if (BX_SELECTED_HD.cdrom.ready) {
-					  bx_panic("Read CD with CD present not implemented\n");
+					  bio->panic("Read CD with CD present not implemented\n");
 				    } else {
 					  atapi_cmd_error(SENSE_NOT_READY, ASC_MEDIUM_NOT_PRESENT);
 					  raise_interrupt();
@@ -1009,7 +1011,7 @@ bx_hard_drive_c::write(Bit32u address, B
 							    ready_to_send_atapi();
 						      }
 #else
-						      bx_panic("LOWLEVEL_CDROM not defined\n");
+						      bio->panic("LOWLEVEL_CDROM not defined\n");
 #endif
 						      break;
 
@@ -1029,7 +1031,7 @@ bx_hard_drive_c::write(Bit32u address, B
 
 						case 2:
 						default:
-						      bx_panic("disk: (READ TOC) Format %d not supported\n", format);
+						      bio->panic("[HDD] (READ TOC) Format %d not supported\n", format);
 						      break;
 					  }
 				    } else {
@@ -1052,7 +1054,7 @@ bx_hard_drive_c::write(Bit32u address, B
 				    if (transfer_length == 0) {
 					  atapi_cmd_nop();
 					  raise_interrupt();
-					  bx_printf("disk: READ(10) with transfer length 0, ok\n");
+					  bio->printf("[HDD] READ(10) with transfer length 0, ok\n");
 					  break;
 				    }
 
@@ -1062,7 +1064,7 @@ bx_hard_drive_c::write(Bit32u address, B
 					  break;
 				    }
 
-				    //bx_printf("cdrom: READ LBA=%d LEN=%d\n", lba, transfer_length);
+				    //bio->printf("[CDD]  READ LBA=%d LEN=%d\n", lba, transfer_length);
 
 				    // handle command
 				    init_send_atapi_command(atapi_command, transfer_length * 2048,
@@ -1086,7 +1088,7 @@ bx_hard_drive_c::write(Bit32u address, B
 						raise_interrupt();
 						break;
 					}
-					bx_printf("cdrom: SEEK (ignored)\n");
+					bio->printf("[CDD]  SEEK (ignored)\n");
 					atapi_cmd_nop();
 					raise_interrupt();
 				}
@@ -1125,7 +1127,7 @@ bx_hard_drive_c::write(Bit32u address, B
 					  int ret_len = 4; // header size
 
 					  if (sub_q) { // !sub_q == header only
-						bx_panic("Read sub-channel with SubQ not implemented\n");
+						bio->panic("Read sub-channel with SubQ not implemented\n");
 					  }
 
 					  init_send_atapi_command(atapi_command, ret_len, alloc_length);
@@ -1147,7 +1149,7 @@ bx_hard_drive_c::write(Bit32u address, B
 			      case 0xbb: // set cd speed
 			      case 0x4e: // stop play/scan
 			      default:
-				    bx_panic("Unknown ATAPI command 0x%x (%d)\n",
+				    bio->panic("Unknown ATAPI command 0x%x (%d)\n",
 					     atapi_command, atapi_command);
 				    break;
 			}
@@ -1156,43 +1158,43 @@ bx_hard_drive_c::write(Bit32u address, B
 		  break;
 
         default:
-          bx_panic("disk: IO write(1f0h): current command is %02xh\n",
+          bio->panic("[HDD] IO write(1f0h): current command is %02xh\n",
             (unsigned) BX_SELECTED_CONTROLLER.current_command);
         }
       break;
 
     case 0x1f1: /* hard disk write precompensation */
 	  WRITE_FEATURES(value);
-	  if (bx_dbg.disk || (CDROM_SELECTED && bx_dbg.cdrom)) {
+	  if (bio->getdbg().disk || (CDROM_SELECTED && bio->getdbg().cdrom)) {
 		if (value == 0xff)
-		      bx_printf("disk: no precompensation {%s}\n", DEVICE_TYPE_STRING);
+		      bio->printf("[HDD] no precompensation {%s}\n", DEVICE_TYPE_STRING);
 		else
-		      bx_printf("disk: precompensation value %02x {%s}\n", (unsigned) value, DEVICE_TYPE_STRING);
+		      bio->printf("[HDD] precompensation value %02x {%s}\n", (unsigned) value, DEVICE_TYPE_STRING);
 	  }
       break;
 
     case 0x1f2: /* hard disk sector count */
 	  WRITE_SECTOR_COUNT(value);
-	  if (bx_dbg.disk || (CDROM_SELECTED && bx_dbg.cdrom))
-		bx_printf("disk: sector count = %u {%s}\n", (unsigned) value, DEVICE_TYPE_STRING);
+	  if (bio->getdbg().disk || (CDROM_SELECTED && bio->getdbg().cdrom))
+		bio->printf("[HDD] sector count = %u {%s}\n", (unsigned) value, DEVICE_TYPE_STRING);
 	  break;
 
     case 0x1f3: /* hard disk sector number */
 	  WRITE_SECTOR_NUMBER(value);
-	  if (bx_dbg.disk || (CDROM_SELECTED && bx_dbg.cdrom))
-		bx_printf("disk: sector number = %u {%s}\n", (unsigned) value, DEVICE_TYPE_STRING);
+	  if (bio->getdbg().disk || (CDROM_SELECTED && bio->getdbg().cdrom))
+		bio->printf("[HDD] sector number = %u {%s}\n", (unsigned) value, DEVICE_TYPE_STRING);
       break;
 
     case 0x1f4: /* hard disk cylinder low */
 	  WRITE_CYLINDER_LOW(value);
-	  if (bx_dbg.disk || (CDROM_SELECTED && bx_dbg.cdrom))
-		bx_printf("disk: cylinder low = %02xh {%s}\n", (unsigned) value, DEVICE_TYPE_STRING);
+	  if (bio->getdbg().disk || (CDROM_SELECTED && bio->getdbg().cdrom))
+		bio->printf("[HDD] cylinder low = %02xh {%s}\n", (unsigned) value, DEVICE_TYPE_STRING);
 	  break;
 
     case 0x1f5: /* hard disk cylinder high */
 	  WRITE_CYLINDER_HIGH(value);
-	  if (bx_dbg.disk || (CDROM_SELECTED && bx_dbg.cdrom))
-		bx_printf("disk: cylinder high = %02xh {%s}\n", (unsigned) value, DEVICE_TYPE_STRING);
+	  if (bio->getdbg().disk || (CDROM_SELECTED && bio->getdbg().cdrom))
+		bio->printf("[HDD] cylinder high = %02xh {%s}\n", (unsigned) value, DEVICE_TYPE_STRING);
 	  break;
 
     case 0x1f6: // hard disk drive and head register
@@ -1202,11 +1204,11 @@ bx_hard_drive_c::write(Bit32u address, B
       // b4: DRV
       // b3..0 HD3..HD0
       if ( (value & 0xe0) != 0xa0 ) // 101xxxxx
-        bx_printf("disk: IO write 1f6 (%02x): not 101xxxxxb\n", (unsigned) value);
+        bio->printf("[HDD] IO write 1f6 (%02x): not 101xxxxxb\n", (unsigned) value);
       BX_HD_THIS drive_select = (value >> 4) & 0x01;
       WRITE_HEAD_NO(value & 0xf);
       if (BX_SELECTED_CONTROLLER.lba_mode == 0 && ((value >> 6) & 1) == 1)
-	    bx_printf("disk: enabling LBA mode\n");
+	    bio->printf("[HDD] enabling LBA mode\n");
       WRITE_LBA_MODE((value >> 6) & 1);
       break;
 
@@ -1217,14 +1219,14 @@ bx_hard_drive_c::write(Bit32u address, B
 	    break;
 
       if (BX_SELECTED_CONTROLLER.status.busy)
-        bx_panic("hard disk: command sent, controller BUSY\n");
+        bio->panic("hard disk: command sent, controller BUSY\n");
       if ( (value & 0xf0) == 0x10 )
         value = 0x10;
       switch (value) {
 
         case 0x10: // calibrate drive
 	  if (BX_SELECTED_HD.device_type != IDE_DISK)
-		bx_panic("disk: calibrate drive issued to non-disk\n");
+		bio->panic("[HDD] calibrate drive issued to non-disk\n");
           if (BX_HD_THIS drive_select != 0 && !bx_options.diskd.present) {
             BX_SELECTED_CONTROLLER.error_register = 0x02; // Track 0 not found
             BX_SELECTED_CONTROLLER.status.busy = 0;
@@ -1233,7 +1235,7 @@ bx_hard_drive_c::write(Bit32u address, B
             BX_SELECTED_CONTROLLER.status.drq = 0;
             BX_SELECTED_CONTROLLER.status.err = 1;
 	    raise_interrupt();
-            bx_printf("disk: calibrate drive != 0, with diskd not present\n");
+            bio->printf("[HDD] calibrate drive != 0, with diskd not present\n");
             break;
             }
 
@@ -1259,7 +1261,7 @@ bx_hard_drive_c::write(Bit32u address, B
            */
 
 	  if (BX_SELECTED_HD.device_type != IDE_DISK)
-		bx_panic("disk: read multiple issued to non-disk\n");
+		bio->panic("[HDD] read multiple issued to non-disk\n");
 
           BX_SELECTED_CONTROLLER.current_command = value;
 
@@ -1268,7 +1270,7 @@ bx_hard_drive_c::write(Bit32u address, B
 	      !BX_SELECTED_CONTROLLER.head_no &&
 	      !BX_SELECTED_CONTROLLER.cylinder_no &&
 	      !BX_SELECTED_CONTROLLER.sector_no) {
-		bx_printf("disk: Read from 0/0/0, aborting command\n");
+		bio->printf("[HDD] Read from 0/0/0, aborting command\n");
 		command_aborted(value);
 		break;
 	  }
@@ -1278,13 +1280,13 @@ bx_hard_drive_c::write(Bit32u address, B
 	  ret = BX_SELECTED_HD.hard_drive->lseek(logical_sector * 512, SEEK_SET);
 
           if (ret < 0) {
-            bx_panic("disk: could not lseek() hard drive image file\n");
+            bio->panic("[HDD] could not lseek() hard drive image file\n");
             }
 
 	  ret = BX_SELECTED_HD.hard_drive->read((bx_ptr_t) BX_SELECTED_CONTROLLER.buffer, 512);
           if (ret < 512) {
-            bx_printf("logical sector was %u\n", (unsigned) logical_sector);
-            bx_panic("disk: could not read() hard drive image file\n");
+            bio->printf("[HDD] logical sector was %u\n", (unsigned) logical_sector);
+            bio->panic("[HDD] could not read() hard drive image file\n");
             }
 
           BX_SELECTED_CONTROLLER.error_register = 0;
@@ -1308,10 +1310,10 @@ bx_hard_drive_c::write(Bit32u address, B
            */
 
 	  if (BX_SELECTED_HD.device_type != IDE_DISK)
-		bx_panic("disk: write multiple issued to non-disk\n");
+		bio->panic("[HDD] write multiple issued to non-disk\n");
 
           if (BX_SELECTED_CONTROLLER.status.busy) {
-            bx_panic("disk: write command: BSY bit set\n");
+            bio->panic("[HDD] write command: BSY bit set\n");
             }
           BX_SELECTED_CONTROLLER.current_command = value;
 
@@ -1327,10 +1329,10 @@ bx_hard_drive_c::write(Bit32u address, B
 
         case 0x90: // Drive Diagnostic
           if (BX_SELECTED_CONTROLLER.status.busy) {
-            bx_panic("disk: diagnostic command: BSY bit set\n");
+            bio->panic("[HDD] diagnostic command: BSY bit set\n");
             }
 	  if (BX_SELECTED_HD.device_type != IDE_DISK)
-		bx_panic("disk: drive diagnostics issued to non-disk\n");
+		bio->panic("[HDD] drive diagnostics issued to non-disk\n");
           BX_SELECTED_CONTROLLER.error_register = 0x81; // Drive 1 failed, no error on drive 0
           // BX_SELECTED_CONTROLLER.status.busy = 0; // not needed
           BX_SELECTED_CONTROLLER.status.drq = 0;
@@ -1339,20 +1341,20 @@ bx_hard_drive_c::write(Bit32u address, B
 
         case 0x91: // initialize drive parameters
           if (BX_SELECTED_CONTROLLER.status.busy) {
-            bx_panic("disk: init drive parameters command: BSY bit set\n");
+            bio->panic("[HDD] init drive parameters command: BSY bit set\n");
             }
 	  if (BX_SELECTED_HD.device_type != IDE_DISK)
-		bx_panic("disk: initialize drive parameters issued to non-disk\n");
+		bio->panic("[HDD] initialize drive parameters issued to non-disk\n");
           // sets logical geometry of specified drive
-          bx_printf("initialize drive params\n");
-          bx_printf("  sector count = %u\n",
+          bio->printf("[HDD] initialize drive params\n");
+          bio->printf("[HDD]   sector count = %u\n",
             (unsigned) BX_SELECTED_CONTROLLER.sector_count);
-          bx_printf("  drive select = %u\n",
+          bio->printf("[HDD]   drive select = %u\n",
             (unsigned) BX_HD_THIS drive_select);
-          bx_printf("  head number = %u\n",
+          bio->printf("[HDD]   head number = %u\n",
             (unsigned) BX_SELECTED_CONTROLLER.head_no);
           if (BX_HD_THIS drive_select != 0 && !bx_options.diskd.present) {
-            bx_panic("disk: init drive params: drive != 0\n");
+            bio->panic("[HDD] init drive params: drive != 0\n");
             //BX_SELECTED_CONTROLLER.error_register = 0x12;
             BX_SELECTED_CONTROLLER.status.busy = 0;
             BX_SELECTED_CONTROLLER.status.drive_ready = 1;
@@ -1362,9 +1364,9 @@ bx_hard_drive_c::write(Bit32u address, B
             break;
 	  }
           if (BX_SELECTED_CONTROLLER.sector_count != BX_SELECTED_HD.hard_drive->sectors)
-            bx_panic("disk: init drive params: sector count doesnt match\n");
+            bio->printf("[HDD] init drive params: sector count doesnt match\n");
           if ( BX_SELECTED_CONTROLLER.head_no != (BX_SELECTED_HD.hard_drive->heads-1) )
-            bx_panic("disk: init drive params: head number doesn't match\n");
+            bio->printf("[HDD] init drive params: head number doesn't match\n");
           BX_SELECTED_CONTROLLER.status.busy = 0;
           BX_SELECTED_CONTROLLER.status.drive_ready = 1;
           BX_SELECTED_CONTROLLER.status.drq = 0;
@@ -1374,11 +1376,11 @@ bx_hard_drive_c::write(Bit32u address, B
 
         case 0xec: // Get Drive Info
           if (bx_options.newHardDriveSupport) {
-	    if (bx_dbg.disk || (CDROM_SELECTED && bx_dbg.cdrom))
-		  bx_printf ("disk: Drive ID Command issued : 0xec \n");
+	    if (bio->getdbg().disk || (CDROM_SELECTED && bio->getdbg().cdrom))
+		  bio->printf ("[HDD] Drive ID Command issued : 0xec \n");
 
             if (BX_HD_THIS drive_select && !bx_options.diskd.present) {
-              bx_printf("disk: 2nd drive not present, aborting\n");
+              bio->printf("[HDD] 2nd drive not present, aborting\n");
               command_aborted(value);
               break;
               }
@@ -1408,7 +1410,7 @@ bx_hard_drive_c::write(Bit32u address, B
 	    }
 	  }
           else {
-	    bx_printf("disk: old hard drive\n");
+	    bio->printf("[HDD] old hard drive\n");
             command_aborted(value);
 	  }
           break;
@@ -1416,8 +1418,8 @@ bx_hard_drive_c::write(Bit32u address, B
         case 0x40: //
           if (bx_options.newHardDriveSupport) {
 	    if (BX_SELECTED_HD.device_type != IDE_DISK)
-		bx_panic("disk: read verify issued to non-disk\n");
-            bx_printf ("disk: Verify Command : 0x40 ! \n");
+		bio->panic("[HDD] read verify issued to non-disk\n");
+            bio->printf ("[HDD] Verify Command : 0x40 ! \n");
             BX_SELECTED_CONTROLLER.status.busy = 0;
             BX_SELECTED_CONTROLLER.status.drive_ready = 1;
             BX_SELECTED_CONTROLLER.status.drq = 0;
@@ -1425,11 +1427,14 @@ bx_hard_drive_c::write(Bit32u address, B
 	    raise_interrupt();
             }
           else {
-	    bx_printf("disk: old hard drive\n");
+	    bio->printf("[HDD] old hard drive\n");
             command_aborted(value);
 	  }
           break;
-
+	case 0xef:
+	      bio->printf("[HDD] 0xef received, returning\n"); /* XXX */
+	      command_aborted(value);
+	  break;
 	case 0xc6: // (mch) set multiple mode
 	      if (BX_SELECTED_CONTROLLER.sector_count != 128 &&
 		  BX_SELECTED_CONTROLLER.sector_count != 64 &&
@@ -1441,7 +1446,7 @@ bx_hard_drive_c::write(Bit32u address, B
 		    command_aborted(value);
 
 	      if (BX_SELECTED_HD.device_type != IDE_DISK)
-		bx_panic("disk: set multiple mode issued to non-disk\n");
+		bio->panic("[HDD] set multiple mode issued to non-disk\n");
 
 	      BX_SELECTED_CONTROLLER.sectors_per_block = BX_SELECTED_CONTROLLER.sector_count;
 	      BX_SELECTED_CONTROLLER.status.busy = 0;
@@ -1498,9 +1503,9 @@ bx_hard_drive_c::write(Bit32u address, B
 	      if (BX_SELECTED_HD.device_type == IDE_CDROM) {
 		    // PACKET
 		    if (BX_SELECTED_CONTROLLER.features & (1 << 0))
-			  bx_panic("disk: PACKET-DMA not supported\n");
+			  bio->panic("[HDD] PACKET-DMA not supported\n");
 		    if (BX_SELECTED_CONTROLLER.features & (1 << 1))
-			  bx_panic("disk: PACKET-overlapped not supported\n");
+			  bio->panic("[HDD] PACKET-overlapped not supported\n");
 
 		    // We're already ready!
 		    BX_SELECTED_CONTROLLER.sector_count = 1;
@@ -1518,11 +1523,11 @@ bx_hard_drive_c::write(Bit32u address, B
 	      }
         case 0xa2: // ATAPI service (optional)
 	      if (BX_SELECTED_HD.device_type == IDE_CDROM) {
-		    bx_panic("disk: ATAPI SERVICE not implemented\n");
+		    bio->panic("[HDD] ATAPI SERVICE not implemented\n");
 	      }
         // non-standard commands
         case 0xf0: // Exabyte enable nest command
-	  bx_printf("disk: Not implemented command\n");
+	  bio->printf("[HDD] Not implemented command\n");
           command_aborted(value);
           break;
 
@@ -1538,7 +1543,7 @@ bx_hard_drive_c::write(Bit32u address, B
 	  break;
 
         default:
-          bx_panic("IO write(1f7h): command 0x%02x\n", (unsigned) value);
+          bio->panic("disk IO write(1f7h): command 0x%02x\n", (unsigned) value);
         }
       break;
 
@@ -1550,13 +1555,13 @@ bx_hard_drive_c::write(Bit32u address, B
 	  BX_HD_THIS s[0].controller.control.reset         = value & 0x04;
 	  BX_HD_THIS s[1].controller.control.reset         = value & 0x04;
 	  BX_SELECTED_CONTROLLER.control.disable_irq    = value & 0x02;
-      //fprintf(stderr, "# hard drive: adpater control reg: reset controller = %d\n",
+      //bio->printf("#HDD] adpater control reg: reset controller = %d\n",
       //  (unsigned) (BX_SELECTED_CONTROLLER.control.reset) ? 1 : 0);
-      //fprintf(stderr, "# hard drive: adpater control reg: disable_irq(14) = %d\n",
+      //bio->printf("#HDD] adpater control reg: disable_irq(14) = %d\n",
       //  (unsigned) (BX_SELECTED_CONTROLLER.control.disable_irq) ? 1 : 0);
 	  if (!prev_control_reset && BX_SELECTED_CONTROLLER.control.reset) {
 		// transition from 0 to 1 causes all drives to reset
-		bx_printf("hard drive: RESET\n");
+		bio->printf("[HDD] RESET\n");
 
 		// (mch) Set BSY, drive not ready
 		for (int id = 0; id < 2; id++) {
@@ -1583,7 +1588,7 @@ bx_hard_drive_c::write(Bit32u address, B
 	  } else if (BX_SELECTED_CONTROLLER.reset_in_progress &&
 		     !BX_SELECTED_CONTROLLER.control.reset) {
 		// Clear BSY and DRDY
-		bx_printf("disk: Reset complete {%s}\n", DEVICE_TYPE_STRING);
+		bio->printf("[HDD] Reset complete {%s}\n", DEVICE_TYPE_STRING);
 		for (int id = 0; id < 2; id++) {
 		      BX_CONTROLLER(id).status.busy           = 0;
 		      BX_CONTROLLER(id).status.drive_ready    = 1;
@@ -1606,7 +1611,7 @@ bx_hard_drive_c::write(Bit32u address, B
 	  break;
 
     default:
-      bx_panic("hard drive: io write to address %x = %02x\n",
+      bio->panic("[HDD] io write to address %x = %02x\n",
         (unsigned) address, (unsigned) value);
     }
 }
@@ -1619,7 +1624,7 @@ bx_hard_drive_c::close_harddrive(void)
 }
 
 
-#define assert(i) do { if (!((i))) bx_panic("assertion on line %d", __LINE__); } while (0)
+#define assert(i) do { if (!((i))) bio->panic("assertion on line %d", __LINE__); } while (0)
 
   Bit32u
 bx_hard_drive_c::calculate_logical_address()
@@ -1637,8 +1642,21 @@ bx_hard_drive_c::calculate_logical_addre
 		  (BX_SELECTED_CONTROLLER.sector_no - 1);
 
       if (logical_sector >=
-	  (BX_SELECTED_HD.hard_drive->cylinders * BX_SELECTED_HD.hard_drive->heads * BX_SELECTED_HD.hard_drive->sectors)) {
-            bx_panic("disk: read sectors: out of bounds\n");
+	  (BX_SELECTED_HD.hard_drive->cylinders *
+	   BX_SELECTED_HD.hard_drive->heads *
+	   BX_SELECTED_HD.hard_drive->sectors))
+      {
+            bio->printf("[HDD] read sectors: out of bounds (c,h,s) -> (%d,%d,%d) = %d, (%d log)\n",
+		BX_SELECTED_HD.hard_drive->cylinders,
+		BX_SELECTED_HD.hard_drive->heads,
+		BX_SELECTED_HD.hard_drive->sectors,
+		BX_SELECTED_HD.hard_drive->cylinders * 
+		BX_SELECTED_HD.hard_drive->heads * 
+		BX_SELECTED_HD.hard_drive->sectors,
+		logical_sector);
+	return	BX_SELECTED_HD.hard_drive->cylinders *
+		BX_SELECTED_HD.hard_drive->heads *
+		BX_SELECTED_HD.hard_drive->sectors - 1;
       }
       return logical_sector;
 }
@@ -1675,7 +1693,7 @@ bx_hard_drive_c::identify_ATAPI_drive(un
   unsigned i;
 
   if (drive != (unsigned)BX_HD_THIS drive_select) {
-	bx_panic("disk: identify_drive panic (drive != drive_select)\n");
+	bio->panic("[HDD] identify_drive panic (drive != drive_select)\n");
   }
 
   BX_SELECTED_HD.id_drive[0] = (2 << 14) | (5 << 8) | (1 << 7) | (2 << 5) | (0 << 0); // Removable CDROM, 50us response, 12 byte packets
@@ -1779,7 +1797,7 @@ bx_hard_drive_c::identify_drive(unsigned
   Bit16u temp16;
 
   if (drive != BX_HD_THIS drive_select) {
-	bx_panic("disk: identify_drive panic (drive != drive_select)\n");
+	bio->panic("[HDD] identify_drive panic (drive != drive_select)\n");
   }
 
 #if defined(CONNER_CFA540A)
@@ -2108,8 +2126,8 @@ bx_hard_drive_c::identify_drive(unsigned
 
 #endif
 
-  if (bx_dbg.disk || (CDROM_SELECTED && bx_dbg.cdrom))
-    bx_printf ("disk: Drive ID Info. initialized : %04d {%s}\n", 512, DEVICE_TYPE_STRING);
+  if (bio->getdbg().disk || (CDROM_SELECTED && bio->getdbg().cdrom))
+    bio->printf ("[HDD] Drive ID Info. initialized : %04d {%s}\n", 512, DEVICE_TYPE_STRING);
 
   // now convert the id_drive array (native 256 word format) to
   // the controller buffer (512 bytes)
@@ -2124,13 +2142,13 @@ bx_hard_drive_c::identify_drive(unsigned
 bx_hard_drive_c::init_send_atapi_command(Bit8u command, int req_length, int alloc_length, bool lazy)
 {
       if (BX_SELECTED_CONTROLLER.byte_count == 0)
-	    bx_panic("disk: ATAPI command with zero byte count\n");
+	    bio->panic("[HDD] ATAPI command with zero byte count\n");
 
       if (BX_SELECTED_CONTROLLER.byte_count & 1)
-	    bx_panic("disk: Odd byte count to ATAPI command\n");
+	    bio->panic("[HDD] Odd byte count to ATAPI command\n");
 
       if (alloc_length <= 0)
-	    bx_panic("disk: Allocation length <= 0\n");
+	    bio->panic("[HDD] Allocation length <= 0\n");
 
       BX_SELECTED_CONTROLLER.interrupt_reason.i_o = 1;
       BX_SELECTED_CONTROLLER.interrupt_reason.c_d = 0;
@@ -2218,19 +2236,19 @@ void
 bx_hard_drive_c::raise_interrupt()
 {
       if (!BX_SELECTED_CONTROLLER.control.disable_irq) {
-	    if (bx_dbg.disk || (CDROM_SELECTED && bx_dbg.cdrom))
-		  bx_printf("disk: Raising interrupt {%s}\n", DEVICE_TYPE_STRING);
+	    if (bio->getdbg().disk || (CDROM_SELECTED && bio->getdbg().cdrom))
+		  bio->printf("[HDD] Raising interrupt {%s}\n", DEVICE_TYPE_STRING);
 	    BX_HD_THIS devices->pic->trigger_irq(14);
       } else {
-	    if (bx_dbg.disk || (CDROM_SELECTED && bx_dbg.cdrom))
-		  bx_printf("disk: Interrupt masked {%s}\n", DEVICE_TYPE_STRING);
+	    if (bio->getdbg().disk || (CDROM_SELECTED && bio->getdbg().cdrom))
+		  bio->printf("[HDD] Interrupt masked {%s}\n", DEVICE_TYPE_STRING);
       }
 }
 
   void
 bx_hard_drive_c::command_aborted(unsigned value)
 {
-  bx_printf("disk: aborting on command 0x%02x {%s}\n", value, DEVICE_TYPE_STRING);
+  bio->printf("[HDD] aborting on command 0x%02x {%s}\n", value, DEVICE_TYPE_STRING);
   BX_SELECTED_CONTROLLER.current_command = 0;
   BX_SELECTED_CONTROLLER.status.busy = 0;
   BX_SELECTED_CONTROLLER.status.drive_ready = 1;
@@ -2263,7 +2281,7 @@ int default_image_t::open (const char* p
       int ret = fstat(fd, &stat_buf);
       if (ret) {
 	    perror("fstat'ing hard drive image file");
-	    bx_panic("fstat() returns error!\n");
+	    bio->panic("fstat() returns error!\n");
       }
 
       return fd;
@@ -2294,7 +2312,7 @@ ssize_t default_image_t::write (const vo
 error_recovery_t::error_recovery_t ()
 {
       if (sizeof(error_recovery_t) != 8) {
-	    bx_panic("error_recovery_t has size != 8\n");
+	    bio->panic("error_recovery_t has size != 8\n");
       }
 
       data[0] = 0x01;
