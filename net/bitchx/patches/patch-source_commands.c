--- source/commands.c.orig	Fri Sep 15 22:45:24 2000
+++ source/commands.c	Fri Sep 15 22:48:11 2000
@@ -2603,13 +2603,13 @@
 		int i;
 		char *newhost = NULL;
 #if !defined(__linux__) && !defined(__EMX__)
-#if _BSDI_VERSION < 199701
+#if defined(_BSDI_VERSION) && _BSDI_VERSION < 199701 || defined(__OpenBSD__)
 		char device[80];
 #endif
 #endif
 
 		tmpnam(filename);
-#if defined(_BSDI_VERSION) && _BSDI_VERSION < 199701
+#if defined(_BSDI_VERSION) && _BSDI_VERSION < 199701 || defined(__OpenBSD__)
 		if (!(p = path_search("netstat", "/sbin:/usr/sbin:/bin:/usr/bin")))
 		{
 			yell("No Netstat to be found");
@@ -2636,10 +2636,16 @@
 			unlink(filename);
 			return;
 		}
-#if defined(_BSDI_VERSION) && _BSDI_VERSION < 199701
+#if defined(_BSDI_VERSION) && _BSDI_VERSION < 199701 || defined(__OpenBSD__)
 		fgets(comm, 200, fptr);
 		fgets(comm, 200, fptr);
 		p = next_arg(comm, &q);
+#ifdef __OpenBSD__
+		while ((*p == 'l') && (*(p+1) == 'o')) {
+			fgets(comm, 200, fptr);
+			p = next_arg(comm, &q);
+		}
+#endif
 		strncpy(device, p, 79);
 		bitchsay("Looking for hostnames on device %s", device);
 #else
@@ -2654,7 +2660,7 @@
 			if (strstr(comm, "inet6 addr") || strstr(comm, "inet addr"))
 #else
 			if (strstr(comm, "inet addr"))
-#endif
+#endif /* ifdef IPV6 */
 			{
 				/* inet addr:127.0.0.1  Mask:... */
 				/* inet6 addr: ::1/128 Scope:... */
@@ -2671,11 +2677,15 @@
 				}
 				*q = 0;
 
-#elif defined(_BSDI_VERSION) && _BSDI_VERSION < 199701
+#elif defined(_BSDI_VERSION) && _BSDI_VERSION < 199701 || defined(__OpenBSD__)
 			if (!strncmp(comm, device, strlen(device)))
 			{
 				p = comm;
+#if defined(_BSDI_VERSION) && _BSDI_VERSION < 199701
 				p += 24;
+#elif defined(__OpenBSD__)
+				p += strlen("Name    Mtu   Network     ")-1;
+#endif
 				while (*p && *p == ' ') p++;
 				q = strchr(p, ' ');
 				*q = 0;
