--- esd.h.orig	Thu Oct  5 19:34:39 2000
+++ esd.h	Thu Oct  5 19:35:35 2000
@@ -7,8 +7,13 @@
 #endif
 
 /* path and name of the default EsounD domain socket */
+#if 0
 #define ESD_UNIX_SOCKET_DIR	"/tmp/.esd"
 #define ESD_UNIX_SOCKET_NAME	ESD_UNIX_SOCKET_DIR "/socket"
+#else
+#define ESD_UNIX_SOCKET_DIR	esd_unix_socket_dir()
+#define ESD_UNIX_SOCKET_NAME	esd_unix_socket_name()
+#endif
 
 /* length of the audio buffer size */
 #define ESD_BUF_SIZE (4 * 1024)
