--- esd.c.orig	Tue Nov 28 14:27:30 2000
+++ esd.c	Sun Jul 22 17:41:06 2001
@@ -210,12 +210,12 @@ struct stat dir_stats;
 
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
