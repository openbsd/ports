--- cgi-bin/openwebmail/openwebmail-prefs.pl.orig	Wed Feb 27 16:43:44 2002
+++ cgi-bin/openwebmail/openwebmail-prefs.pl	Wed Feb 27 18:54:02 2002
@@ -31,7 +31,7 @@
 require "pop3mail.pl";
 
 local %config;
-readconf(\%config, "$SCRIPT_DIR/etc/openwebmail.conf");
+readconf(\%config, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf");
 require $config{'auth_module'} or
    openwebmailerror("Can't open authentication module $config{'auth_module'}");
 
@@ -107,7 +107,8 @@
 %style = %{&readstyle};
 
 ($prefs{'language'} =~ /^([\w\d\._]+)$/) && ($prefs{'language'} = $1);
-require "etc/lang/$prefs{'language'}";
+push (@INC, '%%SYSCONFDIR%%/openwebmail', ".");
+require "lang/$prefs{'language'}";
 $lang_charset ||= 'iso-8859-1';
 
 if ($user) {
@@ -886,7 +887,8 @@
    %prefs = %{&readprefs};
    %style = %{&readstyle};
    ($prefs{'language'} =~ /^([\w\d\._]+)$/) && ($prefs{'language'} = $1);
-   require "etc/lang/$prefs{'language'}";
+   push (@INC, '%%SYSCONFDIR%%/openwebmail', ".");
+   require "lang/$prefs{'language'}";
    $lang_charset ||= 'iso-8859-1';
 
    # save .forward file
