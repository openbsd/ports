--- cgi-bin/openwebmail/openwebmail-read.pl.orig	Wed Feb 27 16:43:54 2002
+++ cgi-bin/openwebmail/openwebmail-read.pl	Wed Feb 27 18:39:43 2002
@@ -33,7 +33,7 @@
 require "mailfilter.pl";
 
 local %config;
-readconf(\%config, "$SCRIPT_DIR/etc/openwebmail.conf");
+readconf(\%config, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf");
 require $config{'auth_module'} or
    openwebmailerror("Can't open authentication module $config{'auth_module'}");
 
@@ -109,6 +109,7 @@
 %style = %{&readstyle};
 
 ($prefs{'language'} =~ /^([\w\d\._]+)$/) && ($prefs{'language'} = $1);
+push (@INC, '%%SYSCONFDIR%%/openwebmail', ".");
 require "etc/lang/$prefs{'language'}";
 $lang_charset ||= 'iso-8859-1';
 
