--- cgi-bin/openwebmail/openwebmail-read.pl.orig	Tue Feb  5 11:26:25 2002
+++ cgi-bin/openwebmail/openwebmail-read.pl	Tue Feb  5 11:27:25 2002
@@ -21,7 +21,7 @@
 $ENV{BASH_ENV} = ""; # no startup sciprt for bash
 umask(0007); # make sure the openwebmail group can write
 
-push (@INC, '/usr/local/www/cgi-bin/openwebmail', ".");
+push (@INC, '%%PREFIX%%/cgi-bin/openwebmail', ".");
 require "openwebmail-shared.pl";
 require "mime.pl";
 require "filelock.pl";
@@ -29,7 +29,7 @@
 require "mailfilter.pl";
 
 local %config;
-readconf(\%config, "/usr/local/www/cgi-bin/openwebmail/etc/openwebmail.conf");
+readconf(\%config, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf");
 require $config{'auth_module'} or
    openwebmailerror("Can't open authentication module $config{'auth_module'}");
 
@@ -104,7 +104,8 @@
 %style = %{&readstyle};
 
 ($prefs{'language'} =~ /^([\w\d\._]+)$/) && ($prefs{'language'} = $1);
-require "etc/lang/$prefs{'language'}";
+push (@INC, '%%SYSCONFDIR%%/openwebmail', ".");
+require "lang/$prefs{'language'}";
 $lang_charset ||= 'iso-8859-1';
 
 getfolders(\@validfolders, \$folderusage);
