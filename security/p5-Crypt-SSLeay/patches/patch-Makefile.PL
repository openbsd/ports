--- Makefile.PL.orig	Tue Sep 26 19:08:09 2000
+++ Makefile.PL	Tue Sep 26 19:08:51 2000
@@ -8,7 +8,7 @@ my $currdir = dirname($0) || '.';
 chdir($currdir) || die("can't change to $currdir: $!");
 
 # FIND POSSIBLE SSL INSTALLATIONS
-my @POSSIBLE_SSL_DIRS = qw(/usr/local/openssl /usr/local/ssl /local/ssl /opt/ssl /usr/local /local /usr);
+my @POSSIBLE_SSL_DIRS = qw(/usr);
 my @CANDIDATE;
 my $open_ssl = 0;
 my $dir;
@@ -38,7 +38,7 @@ if($ARGV[0] =~ /^[a-z]\:|^\//) {
     unless($CANDIDATE[0][0]) {
 	print "No OpenSSL installation found, usually in $POSSIBLE_SSL_DIRS[0]\n";
     }
-    $SSL_DIR = prompt "Which OpenSSL build path do you want to link against?", $CANDIDATE[0][0];
+    $SSL_DIR = $CANDIDATE[0][0];
 }
 my $candidate = &Candidate($SSL_DIR);
 unless($candidate) {
