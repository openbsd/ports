--- esdlib.c.orig	Fri Jul 13 14:59:51 2001
+++ esdlib.c	Tue Mar  5 09:21:39 2002
@@ -20,6 +20,8 @@
 #include <arpa/inet.h>
 #include <errno.h>
 #include <sys/wait.h>
+#include <pwd.h>
+#include <limits.h>
 
 #include <sys/un.h>
 
@@ -1411,4 +1413,34 @@ int esd_close( int esd )
     */
 
     return close( esd );
+}
+
+char *
+esd_unix_socket_dir(void) {
+	static char *sockdir = NULL, sockdirbuf[PATH_MAX];
+	struct passwd *pw;
+
+	if (sockdir != NULL)
+		return (sockdir);
+	pw = getpwuid(getuid());
+	if (pw == NULL || pw->pw_dir == NULL) {
+		fprintf(stderr, "esd: could not find home directory\n");
+		exit(1);
+	}
+	snprintf(sockdirbuf, sizeof(sockdirbuf), "%s/.esd", pw->pw_dir);
+	endpwent();
+	sockdir = sockdirbuf;
+	return (sockdir);
+}
+
+char *
+esd_unix_socket_name(void) {
+	static char *sockname = NULL, socknamebuf[PATH_MAX];
+
+	if (sockname != NULL)
+		return (sockname);
+	snprintf(socknamebuf, sizeof(socknamebuf), "%s/socket",
+	    esd_unix_socket_dir());
+	sockname = socknamebuf;
+	return (sockname);
 }
