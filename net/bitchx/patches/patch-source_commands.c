--- source/commands.c.orig	Wed Jan 19 13:01:51 2000
+++ source/commands.c	Wed Jun 21 22:31:33 2000
@@ -2595,13 +2595,20 @@
 			return;
 		}
 		sprintf(comm, "%s -in >%s", p, filename);
-#else
+#elif defined(__linux__)
 		if (!(p = path_search("ifconfig", "/sbin:/usr/sbin:/bin:/usr/bin")))
 		{
 			yell("Can't find ifconfig");
 			return;
 		}
                 sprintf(comm, "%s -a >%s", p, filename);
+#else
+		if (!(p = path_search("netstat", "/sbin:/usr/sbin:/bin:/usr/bin")))            
+		{
+			yell("No Netstat to be found");
+			return;
+		}
+		sprintf(comm, "%s -in >%s", p, filename);
 #endif
 		system(comm);
 
@@ -2612,12 +2619,22 @@
 		}
 #if defined(__linux__)
 		bitchsay("Looking for hostnames on device eth0");
-#elif _BSDI_VERSION < 199701
+#elif defined(_BSDI_VERSION) && _BSDI_VERSION < 199701
 		fgets(comm, 200, fptr);
 		fgets(comm, 200, fptr);
 		p = next_arg(comm, &q);
 		strncpy(device, p, 79);
 		bitchsay("Looking for hostnames on device %s", device);
+#else
+		fgets(comm, 200, fptr);
+		fgets(comm, 200, fptr);
+		p = next_arg(comm, &q);
+		while ((*p == 'l') && (*(p+1) == 'o')) {
+			fgets(comm, 200, fptr);
+			p = next_arg(comm, &q);
+		}
+		strncpy(device, p , 79);
+		bitchsay("Looking for hostnames on device %s", device);
 #endif
 		while((fgets(comm, 200, fptr)))
 		{
@@ -2649,9 +2666,9 @@
 				q = strchr(p, ' ');
 				*q = 0;
 				if ((p && !*p) || (p && !strcmp(p, "127.0.0.1"))) continue;
-#endif
+#endif /* ifdef IPV6 */
 
-#elif _BSDI_VERSION < 199701
+#elif defined(_BSDI_VERION) && _BSDI_VERSION < 199701
 			if (!strncmp(comm, device, strlen(device)))
 			{
 				p = comm;
@@ -2661,13 +2678,15 @@
 				*q = 0;
 				if ((p && !*p) || (p && !strcmp(p, "127.0.0.1"))) continue;
 #else
-			if ((p = strstr(comm, "inet")))
+			if (!strncmp(comm, device, strlen(device)))
 			{
-				p += 5;
+				p = comm;
+				p += strlen("Name    Mtu   Network     ")-1;
+				while (*p && *p == ' ') p++;
 				q = strchr(p, ' ');
 				*q = 0;
 				if ((p && !*p) || (p && !strcmp(p, "127.0.0.1"))) continue;
-#endif
+#endif /* if defined(__linux__) */
 
 #ifdef IPV6
 				{
