--- src/bubblemon.c.orig	Sun Apr 22 21:21:38 2001
+++ src/bubblemon.c	Sun Jun 17 17:37:13 2001
@@ -27,7 +27,6 @@
 #include <stdio.h>
 #include <sys/stat.h>
 #include <sys/types.h>
-#include <sys/sysinfo.h>
 #include <time.h>
 #include <unistd.h>
 #include <stdlib.h>
@@ -239,16 +238,16 @@
 
   if (divisor_char)
     {
-      sprintf(string, "%Ld/%Ld%cb",
-	      used >> shiftme,
-	      max >> shiftme,
+      sprintf(string, "%lu/%lu%cb",
+	      (unsigned long) used >> shiftme,
+	      (unsigned long) max >> shiftme,
 	      divisor_char);
     }
   else
     {
-      sprintf(string, "%Ld/%Ld bytes",
-	      used >> shiftme,
-	      max >> shiftme);
+      sprintf(string, "%lu/%lu bytes",
+	      (unsigned long) used >> shiftme,
+	      (unsigned long) max >> shiftme);
     }
 }
 
@@ -1106,7 +1105,7 @@
 					 bm);
 
   /* Determine number of CPUs we will monitor */
-  bm->number_of_cpus = glibtop_get_sysinfo()->ncpu;
+  bm->number_of_cpus = 1;
   g_assert(bm->number_of_cpus != 0);
 
   /* Initialize the CPU load metering... */
