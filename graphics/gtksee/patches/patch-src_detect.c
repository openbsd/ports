--- src/detect.c.orig	Fri Sep 24 09:05:55 1999
+++ src/detect.c	Sat Dec 28 15:15:06 2002
@@ -62,8 +62,6 @@ detect_jpeg(guchar *header, guchar *file
 {
 #ifdef HAVE_LIBJPEG
 	jpeg_info jinfo;
-	
-	if (strncmp(&header[6], "JFIF", 4) != 0) return FALSE;
 
 	if (jpeg_get_header(filename, &jinfo))
 	{
