--- iozone.c.orig	Sat Nov 11 15:13:49 2000
+++ iozone.c	Sat Nov 11 15:51:04 2000
@@ -243,10 +243,8 @@
 
 #ifdef unix
 #include <sys/times.h>
-#endif
-
-#ifdef unix
 #include <sys/file.h>
+
 #ifndef NULL
 #define NULL 0
 #endif
@@ -274,6 +272,7 @@
 #define CLK_TCK HZ
 #endif
 #endif
+
 /* for systems with BSD style time, define BSDtime */
 #ifdef bsd4_2
 #define BSDtime
@@ -281,6 +280,7 @@
 #ifdef bsd4_4
 #define BSDtime
 #endif
+
 #ifdef BSDtime
 #include <sys/time.h>
 #else
@@ -291,70 +291,32 @@
 #include <sys/shm.h>
 #endif
 
-#ifdef Windows
-long long page_size = 4096;
-#define GOT_PAGESIZE 1
-#endif
-
-#ifdef netbsd
-#define MAP_ANONYMOUS MAP_ANON
-long long page_size = 4096;
-#define GOT_PAGESIZE 1
-#endif
-
 #ifdef bsd4_2
-long long page_size = 4096;
-#define GOT_PAGESIZE 1
 #define MS_SYNC 0
 #define MS_ASYNC 0
 #endif
 
-#ifdef __bsdi__
-#define MAP_ANONYMOUS MAP_ANON
-#endif
-
 #ifdef bsd4_4
-#ifndef GOT_PAGESIZE
-long long page_size = 4096;
-#define GOT_PAGESIZE 1
-#endif
+#define MAP_ANONYMOUS MAP_ANON
 #endif 
 
 #ifdef SCO
-long long page_size = 4096;
-#define GOT_PAGESIZE 1
 #define AMAP_FILE (0)
 #endif
 
 #ifdef solaris
-long long page_size = 4096;
-#define GOT_PAGESIZE 1
 #define MAP_FILE (0)
 #endif
 
-#ifdef linux
-#ifndef GOT_PAGESIZE
-#include <asm/page.h>
-long long page_size = PAGE_SIZE;
-#define GOT_PAGESIZE 1
-#endif
-#endif
-
-#ifdef IRIX64
-long long page_size = 4096;
+#ifdef PAGESIZE
+long long page_size = PAGESIZE;
 #define GOT_PAGESIZE 1
-#endif
-
-#ifdef IRIX
+#elif defined(IRIX) || defined(IRIX64) || defined(Windows) || defined(bsd4_2) || defined(bsd4_4) || defined(SCO) || defined(Solaris)
 long long page_size = 4096;
 #define GOT_PAGESIZE 1
-#endif
-
-#ifdef NBPG
-#ifndef GOT_PAGESIZE
+#elif defined(NBPG)
 long long page_size = NBPG;
 #define GOT_PAGESIZE 1
-#endif
 #endif
 
 #ifndef GOT_PAGESIZE
