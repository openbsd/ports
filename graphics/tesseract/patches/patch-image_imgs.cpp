--- image/imgs.cpp.orig	Tue Oct  5 20:40:07 2010
+++ image/imgs.cpp	Tue Oct  5 20:43:41 2010
@@ -252,7 +252,8 @@ inT32 check_legal_image_size(                     //ge
   }
   if (bits_per_pixel != 1 && bits_per_pixel != 2
       && bits_per_pixel != 4 && bits_per_pixel != 5
-      && bits_per_pixel != 6 && bits_per_pixel != 8 && bits_per_pixel != 24
+      && bits_per_pixel != 6 && bits_per_pixel != 8
+	  && bits_per_pixel != 16 && bits_per_pixel != 24
       && bits_per_pixel != 32) {
     BADBPP.error ("check_legal_image_size", TESSLOG, "%d", bits_per_pixel);
     return -1;
