--- whisker.pl.orig	Sun Aug  6 06:17:49 2000
+++ whisker.pl	Sun Aug  6 06:23:40 2000
@@ -2,8 +2,8 @@
 require 5.004; # sorry, just 5.003 has issues...
 
 $whisker_version="1.4.0";
-$WHEREIS_WHISKER=$0;
-$WHEREIS_WHISKER=~s/[^\/\\]+$//; 
+# where the db files are
+$WHEREIS_WHISKER="!!PREFIX!!/share/whisker/";
 $GLOBAL_HTMLOUTPUT=0;
 
 use Socket; use Getopt::Std;
@@ -75,7 +75,7 @@ print qq~
 	-h+ *scan single host (IP or domain)
 	-H+ *host list to scan (file)
 	-F+ *(for unix multi-threaded front end use only)
-	-s+  specifies the script database file (defaults to scan.db)
+	-s   specifies the script database file (defaults to scan.db)
 	-V   use virtual hosts when possible
 	-p+  specify a different default port to use
 	-S+  force server version (e.g. -S "Apache/1.3.6")
@@ -574,7 +574,7 @@ if($D{'XXRescanDumb'}>0 && $GLOBAL_WHISK
 $GLOBAL_WHISKER_LOOP_CONTROL=1;
 $nmapfile=$singlehost="";
 $hostsfile="dumb$$.lst"; # we made a list of dumb servers
-$dbfile="dumb.db";
+$dbfile=$WHEREIS_WHISKER."dumb.db";
 $D{'XXRescanDumb'}=0; $GLOBAL_WHISKER_NOMORE_DUMB=1;}
 
 } # this is the $GLOBAL_WHISKER_LOOP_CONTROL while() loop
