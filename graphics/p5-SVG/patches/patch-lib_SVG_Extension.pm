--- ./lib/SVG/Extension.pm.orig Sat Apr  3 13:41:42 2010
+++ ./lib/SVG/Extension.pm Sat Apr  3 13:41:55 2010
@@ -23,6 +23,9 @@
 %TYPES=map { $_ => 1 } @TYPES;

 #-----------------
+=head1 NAME
+
+SVG::Extension

 sub new {
     return shift->SUPER::new(@_);
