--- named/ns_config.c.orig	Sun Feb  4 16:04:24 2001
+++ named/ns_config.c	Sun Feb  4 16:05:07 2001
@@ -634,7 +634,8 @@
 			 * We will always transfer this zone again
 			 * after a reload.
 			 */
-			sprintf(buf, "NsTmp%ld.%d", (long)getpid(), tmpnum++);
+			sprintf(buf, "%s%ld.%d", _PATH_TMPXFERSTUB,
+				(long)getpid(), tmpnum++);
 			new_zp->z_source = savestr(buf, 1);
 			zp->z_flags |= Z_TMP_FILE;
 		} else
