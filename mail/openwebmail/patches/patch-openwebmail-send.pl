--- cgi-bin/openwebmail/openwebmail-send.pl.orig	Wed Feb 27 16:43:50 2002
+++ cgi-bin/openwebmail/openwebmail-send.pl	Wed Feb 27 18:40:15 2002
@@ -33,7 +33,7 @@
 require "maildb.pl";
 
 local %config;
-readconf(\%config, "$SCRIPT_DIR/etc/openwebmail.conf");
+readconf(\%config, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf");
 require $config{'auth_module'} or
    openwebmailerror("Can't open authentication module $config{'auth_module'}");
 
@@ -109,7 +109,8 @@
 %style = %{&readstyle};
 
 ($prefs{'language'} =~ /^([\w\d\._]+)$/) && ($prefs{'language'} = $1);
-require "etc/lang/$prefs{'language'}";
+push (@INC, '%%SYSCONFDIR%%/openwebmail', ".");
+require "lang/$prefs{'language'}";
 $lang_charset ||= 'iso-8859-1';
 
 getfolders(\@validfolders, \$folderusage);
