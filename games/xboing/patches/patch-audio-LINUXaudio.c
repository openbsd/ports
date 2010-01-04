$OpenBSD: patch-audio-LINUXaudio.c,v 1.3 2010/01/04 11:21:21 sthen Exp $
--- audio/LINUXaudio.c.orig	Thu Nov 21 17:28:33 1996
+++ audio/LINUXaudio.c	Sun Jan  3 02:36:53 2010
@@ -52,11 +52,13 @@
  *  Include file dependencies:
  */
 
+#include <fcntl.h>
 #include <unistd.h>
 #include <stdio.h>
-#include <fcntl.h>
-#include <linux/soundcard.h>
+#include <sndio.h>
 
+#include "include/ulaw.h"
+
 #include "include/error.h"
 #include "include/audio.h"
 
@@ -77,10 +79,11 @@ static int snd_pipes[2];
  *  Internal variable declarations:
  */
 
-static char				*Audio_dev = "/dev/audio";
-static int 				Audio_fd;
+static struct sio_hdl			*hdl;
+
 /* size should depend on sample_rate */
 static unsigned char   	buf[BUFFER_SIZE];       
+static short	  		linBuf[BUFFER_SIZE];
 static char 			errorString[255];
 
 #if NeedFunctionPrototypes
@@ -90,7 +93,9 @@ int SetUpAudioSystem(display)
 	Display *display;
 #endif
 {
-	int err, cnt;
+	struct sio_par par;
+	int i,err, cnt;
+	uint32_t pos = 0;
       
 
 	if (child_pid == 0)
@@ -124,17 +129,30 @@ int SetUpAudioSystem(display)
 
                   if (!strcmp(string, "EXIT"))
 	             {
-                     /* Make sure that the audio device is flushed and reset */
- 	             ioctl(Audio_fd, SNDCTL_DSP_RESET, 0);
-
 		     exit(0); 
 	             }	
 
 	          /* Try to open the audio device */
- 	          if (!(Audio_fd = open(Audio_dev, O_WRONLY)))
+ 	          if (!(hdl = sio_open(NULL, SIO_PLAY, 0)))
   	          {	
+fprintf(stderr, "sio_open failed\n");
 		         continue;
   	          }
+		  sio_initpar(&par);
+		  par.bits = 16;
+		  par.sig = 1;
+		  par.rate = 8000;
+		  par.le = SIO_LE_NATIVE;
+		  if (!sio_setpar(hdl, &par) || !sio_getpar(hdl, &par)) {
+			sprintf(errorString, "Unable to configure sndio device.");
+                        WarningMessage(errorString);
+			continue;
+		  }
+		  if (!sio_start(hdl)) {
+			sprintf(errorString, "Unable to start sndio device.");
+                        WarningMessage(errorString);
+			continue;
+                  }
 	
 		/* Must be a sound file name */
  		if (str != NULL)
@@ -151,13 +169,28 @@ int SetUpAudioSystem(display)
 
                 }
 
+		/* skip the header, if present */
+		if (read(ifd, (char *)buf, 4) == 4) {
+			if (!strncmp(buf, ".snd", 4)) {
+				if (read(ifd, &pos, sizeof(pos)) == sizeof(pos)) {
+					pos = ntohl(pos);
+				}
+			}
+		}
+		lseek(ifd, (off_t)pos, SEEK_SET);
+
                 /* At this point, we're all ready to copy the data. */
-                while ((cnt = read(ifd, (char *) buf, BUFFER_SIZE)) >= 0) 
+                while ((cnt = read(ifd, (char *) buf, BUFFER_SIZE)) > 0) 
                 {
+			/* Now do the ulaw stuff to the raw data */
+			for(i = 0; i < cnt; i++) 
+			{
+		    	linBuf[i] = UlToLin(buf[i]);
+			}
                         /* If input EOF, write an eof marker */
-                        err = write(Audio_fd, (char *)buf, cnt);
+                        err = sio_write(hdl, (char *)linBuf, cnt * 2);
 
-                        if (err != cnt) 
+                        if (err != cnt * 2) 
                         {
                                 sprintf(errorString, "Problem while writing to sound device");
                                 WarningMessage(errorString);
@@ -176,15 +209,9 @@ int SetUpAudioSystem(display)
                 }
         
 
- 		/* Flush any audio activity */
- 		if (ioctl(Audio_fd, SNDCTL_DSP_SYNC, 0) < 0)
-  		     {
-  			     sprintf(errorString, "Unable to flush audio device.");
-  			     WarningMessage(errorString);
-  		     }
                 /* Close the sound file */
                 (void) close(ifd);
-		(void) close(Audio_fd);
+		sio_close(hdl);
              } while (True);
           }
        
