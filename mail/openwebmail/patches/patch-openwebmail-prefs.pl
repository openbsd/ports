--- cgi-bin/openwebmail/openwebmail-prefs.pl.orig	Fri Mar 22 14:55:20 2002
+++ cgi-bin/openwebmail/openwebmail-prefs.pl	Fri Mar 22 14:56:38 2002
@@ -787,7 +787,8 @@
    %prefs = %{&readprefs};
    %style = %{&readstyle};
    ($prefs{'language'} =~ /^([\w\d\._]+)$/) && ($prefs{'language'} = $1);
-   require "etc/lang/$prefs{'language'}";
+   push (@INC, '%%SYSCONFDIR%%/openwebmail', ".");
+   require "lang/$prefs{'language'}";
    $lang_charset ||= 'iso-8859-1';
 
    # save .forward file
