--- cgi-bin/openwebmail/openwebmail-spell.pl.orig	Wed Feb 27 16:44:17 2002
+++ cgi-bin/openwebmail/openwebmail-spell.pl	Wed Feb 27 18:40:38 2002
@@ -36,7 +36,7 @@
 require "filelock.pl";
 
 local %config;
-readconf(\%config, "$SCRIPT_DIR/etc/openwebmail.conf");
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
 
 
