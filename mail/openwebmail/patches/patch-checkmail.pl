--- cgi-bin/openwebmail/checkmail.pl.orig	Fri Mar 22 14:50:44 2002
+++ cgi-bin/openwebmail/checkmail.pl	Fri Mar 22 14:51:49 2002
@@ -31,8 +31,8 @@
 require "pop3mail.pl";
 
 local (%config, %config_raw);
-readconf(\%config, \%config_raw, "$SCRIPT_DIR/etc/openwebmail.conf.default");
-readconf(\%config, \%config_raw, "$SCRIPT_DIR/etc/openwebmail.conf") if (-f "$SCRIPT_DIR/etc/openwebmail.conf");
+readconf(\%config, \%config_raw, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf.default");
+readconf(\%config, \%config_raw, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf") if (-f "%%SYSCONFDIR%%/openwebmail/openwebmail.conf");
 require $config{'auth_module'} or
    openwebmailerror("Can't open authentication module $config{'auth_module'}");
 
