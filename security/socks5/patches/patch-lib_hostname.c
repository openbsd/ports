$OpenBSD: patch-lib_hostname.c,v 1.1 2000/08/03 00:01:52 brad Exp $

The patch is for clients that do not have DNS resolution.  Sites that do not
use the remote name resolution do not have to apply this patch.

The fakehost files (/tmp/.s5fakehost-<uid>) created with releases prior to 
release 10 are not compatible.  

If the fakehost file has size 65284 bytes, it is the old version.  Delete the
file, apply the following patch, and rebuild the clients.  The new fakehost
file has size 32644 bytes.

--- lib/hostname.c.orig	Wed Aug  2 19:01:40 2000
+++ lib/hostname.c	Wed Aug  2 19:02:49 2000
@@ -171,7 +171,7 @@
         strncpy(hostname, name, MIN(strlen(name), S5_HOSTNAME_SIZE-1));
         hostname[MIN(strlen(name), S5_HOSTNAME_SIZE-1)] = '\0';
 
-        lseek(fd, (j-1)*256+sizeof(int), SEEK_SET);
+        lseek(fd, (j-1)*S5_HOSTNAME_SIZE+sizeof(int), SEEK_SET);
         if (REAL(write)(fd, hostname, sizeof(hostname)) != sizeof(hostname)) {
             S5LogUpdate(S5LogDefaultHandle, S5_LOG_ERROR, 0, "GetHostFromFile: write table failed %m");
             SetWriteLock(0);
@@ -472,7 +472,7 @@
 
     if (fd > 0) {
         SetReadLock(1);
-        lseek(fd, (i-1)*256+sizeof(int), SEEK_SET);
+        lseek(fd, (i-1)*S5_HOSTNAME_SIZE+sizeof(int), SEEK_SET);
 
         if (REAL(read)(fd, hostname, len) != len) {
             S5LogUpdate(S5LogDefaultHandle, S5_LOG_ERROR, 0, "lsGetCachedHostname: read fake table failed %m");
