--- cgi-bin/openwebmail/checkmail.pl.orig	Thu Jun 27 17:16:18 2002
+++ cgi-bin/openwebmail/checkmail.pl	Thu Jun 27 17:17:34 2002
@@ -26,8 +26,8 @@
 require "pop3mail.pl";
 
 use vars qw(%config %config_raw);
-readconf(\%config, \%config_raw, "$SCRIPT_DIR/etc/openwebmail.conf.default");
-readconf(\%config, \%config_raw, "$SCRIPT_DIR/etc/openwebmail.conf") if (-f "$SCRIPT_DIR/etc/openwebmail.conf");
+readconf(\%config, \%config_raw, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf.default");
+readconf(\%config, \%config_raw, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf") if (-f "%%SYSCONFDIR%%/openwebmail/openwebmail.conf");
 require $config{'auth_module'} or
    openwebmailerror("Can't open authentication module $config{'auth_module'}");
 
