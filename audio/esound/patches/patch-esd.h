--- esd.h.orig	Tue Oct  3 20:36:53 2000
+++ esd.h	Mon Mar  4 17:02:28 2002
@@ -7,8 +7,16 @@ extern "C" {
 #endif
 
 /* path and name of the default EsounD domain socket */
+#if 0
 #define ESD_UNIX_SOCKET_DIR	"/tmp/.esd"
 #define ESD_UNIX_SOCKET_NAME	ESD_UNIX_SOCKET_DIR "/socket"
+#else
+#define ESD_UNIX_SOCKET_DIR	esd_unix_socket_dir()
+#define ESD_UNIX_SOCKET_NAME	esd_unix_socket_name()
+
+char *esd_unix_socket_dir(void);
+char *esd_unix_socket_name(void);
+#endif
 
 /* length of the audio buffer size */
 #define ESD_BUF_SIZE (4 * 1024)
