--- Makefile.PL.orig	Sat Aug 18 00:15:39 2001
+++ Makefile.PL	Sat Aug 18 00:17:58 2001
@@ -4,8 +4,8 @@
 WriteMakefile(
     'NAME'	   => 'Text::Iconv',
     'VERSION_FROM' => 'Iconv.pm', # finds $VERSION
-    'LIBS'	   => [''],   # e.g., '-lm' 
+    'LIBS'	   => [ "$ENV{LDFLAGS} -liconv" ],	# e.g., '-lm' 
     'DEFINE'	   => '',     # e.g., '-DHAVE_SOMETHING' 
-    'INC'	   => '',     # e.g., '-I/usr/include/other' 
+    'INC'	   => $ENV{CPPFLAGS},	# e.g., '-I/usr/include/other' 
     'dist'         => {COMPRESS => 'gzip', SUFFIX => 'gz'},
 );
