--- cucipop.c.orig	Wed Dec 27 12:22:36 2000
+++ cucipop.c	Wed Dec 27 12:27:55 2000
@@ -754,8 +754,8 @@
 	curfd=-1;
 	setsockopt(serverfd,SOL_SOCKET,SO_REUSEADDR,&curfd,sizeof curfd);
 	if(bind(serverfd,(struct sockaddr*)&peername,sizeof peername))
-	 { syslog(LOG_CRIT,"unable to bind socket %d",POP3_PORT);
-	   fprintf(stderr,"%s: Can't bind socket %d\n",cucipopn,POP3_PORT);
+	 { syslog(LOG_CRIT,"unable to bind socket %d",htons(port));
+	   fprintf(stderr,"%s: Can't bind socket %d\n",cucipopn,htons(port));
 	   return EX_OSFILE;
 	 }
 	fclose(stderr);
