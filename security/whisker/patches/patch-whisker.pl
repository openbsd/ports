--- whisker.pl.orig	Wed Dec 25 16:40:45 2002
+++ whisker.pl	Wed Dec 25 16:41:53 2002
@@ -32,7 +32,7 @@
 # Set to 0 if you don't want to see the "Whisker not officially
 # installed.." message, only seen if the WHISKER_DIR does not exist
 
-$WHISKER_INSTALL_WARNING = 1;
+$WHISKER_INSTALL_WARNING = 0;
 
 ### END CONFIG SECTION ##################################################
 
@@ -58,7 +58,7 @@
 eval 'use LW';
 if($@){	$LW=0;
     if(-e $WHISKER_DIR.'LW.pm'){
-	eval "require $WHISKER_DIR".'LW.pm';
+	eval "require \'$WHISKER_DIR".'LW.pm\'';
 	if(!$@){$LW++;}}
 } else { $LW++; }
 if(!$LW){
