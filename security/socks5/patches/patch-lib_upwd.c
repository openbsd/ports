$OpenBSD: patch-lib_upwd.c,v 1.1 2000/08/03 00:04:12 brad Exp $

This patch prevents the client for sending zero length username/passwords 
and prevents the server from accepting zero length username/passwords.
Only useful for sites using username/password authentication (rfc1929).

--- lib/upwd.c.orig	Wed Aug  2 19:07:13 2000
+++ lib/upwd.c	Wed Aug  2 19:10:52 2000
@@ -78,6 +78,16 @@
     pwd = getenv("SOCKS5_PASSWD");
     MUTEX_UNLOCK(env_mutex);
 
+    if(!user || strlen(user)==0) {
+	S5LogUpdate(S5LogDefaultHandle, S5_LOG_DEBUG(10), 0, "UPWD: Missing username ");
+	return AUTH_FAIL;
+    }
+
+    if(!pwd || strlen(pwd)==0) {
+	S5LogUpdate(S5LogDefaultHandle, S5_LOG_DEBUG(10), 0, "UPWD: Missing password ");
+	return AUTH_FAIL;
+    }
+
     SETVERS(buf, 1);
     SETULEN(buf, user);
     SETUSER(buf, user);
@@ -107,12 +117,12 @@
 	goto done;
     }
     
-    if (GetString(sd, name, &timerm) < 0) {
+    if (GetString(sd, name, &timerm) <= 0) {
 	S5LogUpdate(S5LogDefaultHandle, S5_LOG_DEBUG(10), 0, "UPWD: Failed to get valid username");
 	goto done;
     }
     
-    if (GetString(sd, passwd, &timerm) < 0) {
+    if (GetString(sd, passwd, &timerm) <= 0) {
 	S5LogUpdate(S5LogDefaultHandle, S5_LOG_DEBUG(10), 0, "UPWD: Failed to get valid password");
 	goto done;
     }
