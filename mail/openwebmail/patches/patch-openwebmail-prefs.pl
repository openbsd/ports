--- cgi-bin/openwebmail/openwebmail-prefs.pl.orig	Tue Feb  5 11:24:48 2002
+++ cgi-bin/openwebmail/openwebmail-prefs.pl	Tue Feb  5 11:26:17 2002
@@ -21,13 +21,13 @@
 $ENV{BASH_ENV} = ""; # no startup sciprt for bash
 umask(0007); # make sure the openwebmail group can write
 
-push (@INC, '/usr/local/www/cgi-bin/openwebmail', ".");
+push (@INC, '%%PREFIX%%/cgi-bin/openwebmail', ".");
 require "openwebmail-shared.pl";
 require "filelock.pl";
 require "pop3mail.pl";
 
 local %config;
-readconf(\%config, "/usr/local/www/cgi-bin/openwebmail/etc/openwebmail.conf");
+readconf(\%config, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf");
 require $config{'auth_module'} or
    openwebmailerror("Can't open authentication module $config{'auth_module'}");
 
@@ -101,7 +101,8 @@
 %style = %{&readstyle};
 
 ($prefs{'language'} =~ /^([\w\d\._]+)$/) && ($prefs{'language'} = $1);
-require "etc/lang/$prefs{'language'}";
+push (@INC, '%%SYSCONFDIR%%/openwebmail', ".");
+require "lang/$prefs{'language'}";
 $lang_charset ||= 'iso-8859-1';
 
 if ($user) {
@@ -863,7 +864,8 @@
    %prefs = %{&readprefs};
    %style = %{&readstyle};
    ($prefs{'language'} =~ /^([\w\d\._]+)$/) && ($prefs{'language'} = $1);
-   require "etc/lang/$prefs{'language'}";
+   push (@INC, '%%SYSCONFDIR%%/openwebmail', ".");
+   require "lang/$prefs{'language'}";
    $lang_charset ||= 'iso-8859-1';
 
    # save .forward file
