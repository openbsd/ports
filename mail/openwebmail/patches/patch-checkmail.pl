--- cgi-bin/openwebmail/checkmail.pl.orig	Wed Feb 27 16:44:50 2002
+++ cgi-bin/openwebmail/checkmail.pl	Wed Feb 27 18:37:40 2002
@@ -31,7 +31,7 @@
 require "pop3mail.pl";
 
 local %config;
-readconf(\%config, "$SCRIPT_DIR/etc/openwebmail.conf");
+readconf(\%config, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf");
 require $config{'auth_module'} or
    openwebmailerror("Can't open authentication module $config{'auth_module'}");
 
