--- Makefile.PL.orig	Tue May 16 23:12:52 2000
+++ Makefile.PL	Tue Feb  6 03:05:28 2001
@@ -7,7 +7,8 @@ WriteMakefile(
     'macro' => {
 	  CVSROOT => 'modperl.com:/local/cvs_repository',
     },
-    'LIBS'	=> ["-lcdaudio"],
+    'LIBS' => [ "$ENV{LDFLAGS} -lcdaudio" ],
+    'INC' => $ENV{CPPFLAGS},
     DEFINE => '-g',
     OBJECT => 'cddb_lookup.o CD.o',
 );
