--- cgi-bin/openwebmail/openwebmail.pl.orig	Wed Feb 27 16:44:43 2002
+++ cgi-bin/openwebmail/openwebmail.pl	Wed Feb 27 18:41:29 2002
@@ -31,7 +31,7 @@
 require "filelock.pl";
 
 local %config;
-readconf(\%config, "$SCRIPT_DIR/etc/openwebmail.conf");
+readconf(\%config, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf");
 require $config{'auth_module'} or
    openwebmailerror("Can't open authentication module $config{'auth_module'}");
 
@@ -62,7 +62,8 @@
 %style = %{&readstyle};
 
 ($prefs{'language'} =~ /^([\w\d\._]+)$/) && ($prefs{'language'} = $1);
-require "etc/lang/$prefs{'language'}";
+push (@INC, '%%SYSCONFDIR%%/openwebmail', ".");
+require "lang/$prefs{'language'}";
 $lang_charset ||= 'iso-8859-1';
 
 ####################### MAIN ##########################
