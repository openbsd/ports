--- src/detect.c.orig	Thu Mar  1 05:40:43 2001
+++ src/detect.c	Thu Mar  1 05:41:21 2001
@@ -62,8 +62,6 @@
 {
 #ifdef HAVE_LIBJPEG
 	jpeg_info jinfo;
-	
-	if (strncmp(&header[6], "JFIF", 4) != 0) return FALSE;
 
 	if (jpeg_get_header(filename, &jinfo))
 	{
