--- ntop.c.orig	Tue Aug 15 15:12:47 2000
+++ ntop.c	Tue Aug 15 15:13:47 2000
@@ -325,13 +325,8 @@
       break;
 
     case 'w':
-      if(!isdigit(optarg[0])) {
-	printf("FATAL ERROR: flag -w expects a numeric argument.\n");
-	exit(-1);
-      }
-      webMode++;
-      webPort = atoi(optarg);
-      break;
+      fprintf(stderr, "-w mode is disabled for security reasons.\n");
+      exit(-1);
 
     default:
       usage(0);
