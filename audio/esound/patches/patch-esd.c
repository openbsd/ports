--- esd.c.orig	Fri Jul 13 14:59:50 2001
+++ esd.c	Tue Mar  5 09:21:39 2002
@@ -211,12 +211,12 @@ struct stat dir_stats;
 
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
