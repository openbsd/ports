--- Connection.pm.orig	Sun Jul 15 17:38:58 2001
+++ Connection.pm	Sun Jul 15 17:39:41 2001
@@ -1101,7 +1101,7 @@
 		 /x)                      # That ought to do it for now...
 	{
 	    $line = substr $line, 1 if $line =~ /^:/;
-	    ($from, $line) = split ":", $line, 2;
+            ($from, $line) = $line =~ m/^(.*):(.*?)$/;
 	    ($from, $type, @stuff) = split /\s+/, $from;
 	    $type = lc $type;
 	    
