--- Makefile.PL.orig	Wed May 17 05:12:52 2000
+++ Makefile.PL	Mon Jan 29 14:42:08 2001
@@ -7,7 +7,7 @@
     'macro' => {
 	  CVSROOT => 'modperl.com:/local/cvs_repository',
     },
-    'LIBS'	=> ["-lcdaudio"],
+    'LIBS'	=> "-L/usr/local/lib -lcdaudio",
     DEFINE => '-g',
     OBJECT => 'cddb_lookup.o CD.o',
 );
