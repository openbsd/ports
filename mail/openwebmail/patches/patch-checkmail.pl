--- cgi-bin/openwebmail/checkmail.pl.orig	Tue Feb  5 11:21:06 2002
+++ cgi-bin/openwebmail/checkmail.pl	Tue Feb  5 11:24:41 2002
@@ -19,7 +19,7 @@
 $ENV{PATH} = ""; # no PATH should be needed
 $ENV{BASH_ENV} = ""; # no startup sciprt for bash
 
-push (@INC, '/usr/local/www/cgi-bin/openwebmail', ".");
+push (@INC, '%%PREFIX%%/cgi-bin/openwebmail', ".");
 require "openwebmail-shared.pl";
 require "mime.pl";
 require "filelock.pl";
@@ -28,7 +28,7 @@
 require "pop3mail.pl";
 
 local %config;
-readconf(\%config, "/usr/local/www/cgi-bin/openwebmail/etc/openwebmail.conf");
+readconf(\%config, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf");
 require $config{'auth_module'} or
    openwebmailerror("Can't open authentication module $config{'auth_module'}");
 
