--- esd.c.orig	Wed Jan 14 07:00:46 2004
+++ esd.c	Thu Jun 24 20:07:12 2004
@@ -236,12 +236,12 @@ struct stat dir_stats;
 
 #if defined(S_ISVTX)
 #define ESD_UNIX_SOCKET_DIR_MODE (S_IRUSR|S_IWUSR|S_IXUSR|\
-				  S_IRGRP|S_IWGRP|S_IXGRP|\
-				  S_IROTH|S_IWOTH|S_IXOTH|S_ISVTX)
+				  S_IRGRP|S_IXGRP|\
+				  S_IROTH|S_IXOTH|S_ISVTX)
 #else
 #define ESD_UNIX_SOCKET_DIR_MODE (S_IRUSR|S_IWUSR|S_IXUSR|\
-				  S_IRGRP|S_IWGRP|S_IXGRP|\
-				  S_IROTH|S_IWOTH|S_IXOTH)
+				  S_IRGRP|S_IXGRP|\
+				  S_IROTH|S_IXOTH)
 #endif
 
   if (mkdir(ESD_UNIX_SOCKET_DIR, ESD_UNIX_SOCKET_DIR_MODE) == 0) {
