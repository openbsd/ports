--- cgi-bin/openwebmail/openwebmail-viewatt.pl.orig	Tue Feb  5 11:28:23 2002
+++ cgi-bin/openwebmail/openwebmail-viewatt.pl	Tue Feb  5 11:29:04 2002
@@ -21,14 +21,14 @@
 $ENV{BASH_ENV} = ""; # no startup sciprt for bash
 umask(0007); # make sure the openwebmail group can write
 
-push (@INC, '/usr/local/www/cgi-bin/openwebmail', ".");
+push (@INC, '%%PREFIX%%/cgi-bin/openwebmail', ".");
 require "openwebmail-shared.pl";
 require "mime.pl";
 require "filelock.pl";
 require "maildb.pl";
 
 local %config;
-readconf(\%config, "/usr/local/www/cgi-bin/openwebmail/etc/openwebmail.conf");
+readconf(\%config, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf");
 require $config{'auth_module'} or
    openwebmailerror("Can't open authentication module $config{'auth_module'}");
 
@@ -103,7 +103,8 @@
 %style = %{&readstyle};
 
 ($prefs{'language'} =~ /^([\w\d\._]+)$/) && ($prefs{'language'} = $1);
-require "etc/lang/$prefs{'language'}";
+push (@INC, '%%SYSCONFDIR%%/openwebmail', ".");
+require "lang/$prefs{'language'}";
 $lang_charset ||= 'iso-8859-1';
 
 getfolders(\@validfolders, \$folderusage);
