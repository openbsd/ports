--- cgi-bin/openwebmail/spellcheck.pl.orig	Tue Feb  5 11:30:31 2002
+++ cgi-bin/openwebmail/spellcheck.pl	Tue Feb  5 11:31:18 2002
@@ -18,12 +18,12 @@
 $ENV{BASH_ENV} = ""; # no startup sciprt for bash
 umask(0007); # make sure the openwebmail group can write
 
-push (@INC, '/usr/local/www/cgi-bin/openwebmail', ".");
+push (@INC, '%%PREFIX%%/cgi-bin/openwebmail', ".");
 require "openwebmail-shared.pl";
 require "filelock.pl";
 
 local %config;
-readconf(\%config, "/usr/local/www/cgi-bin/openwebmail/etc/openwebmail.conf");
+readconf(\%config, "%%SYSCONFDIR%%/openwebmail/etc/openwebmail.conf");
 require $config{'auth_module'} or
    openwebmailerror("Can't open authentication module $config{'auth_module'}");
 
@@ -80,6 +80,7 @@
 %style = %{&readstyle};
 
 ($prefs{'language'} =~ /^([\w\d\._]+)$/) && ($prefs{'language'} = $1);
+push (@INC, '%%SYSCONFDIR%%/openwebmail', ".");
 require "etc/lang/$prefs{'language'}";
 $lang_charset ||= 'iso-8859-1';
 
