--- cgi-bin/openwebmail/openwebmail-main.pl.orig	Wed Feb 27 16:43:38 2002
+++ cgi-bin/openwebmail/openwebmail-main.pl	Wed Feb 27 18:38:47 2002
@@ -34,7 +34,7 @@
 require "mailfilter.pl";
 
 local %config;
-readconf(\%config, "$SCRIPT_DIR/etc/openwebmail.conf");
+readconf(\%config, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf");
 require $config{'auth_module'} or
    openwebmailerror("Can't open authentication module $config{'auth_module'}");
 
@@ -110,7 +110,8 @@
 %style = %{&readstyle};
 
 ($prefs{'language'} =~ /^([\w\d\._]+)$/) && ($prefs{'language'} = $1);
-require "etc/lang/$prefs{'language'}";
+push (@INC, '%%SYSCONFDIR%%/openwebmail', ".");
+require "lang/$prefs{'language'}";
 $lang_charset ||= 'iso-8859-1';
 
 getfolders(\@validfolders, \$folderusage);
