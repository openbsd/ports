--- cgi-bin/openwebmail/openwebmail-shared.pl.orig	Fri Mar 22 14:58:41 2002
+++ cgi-bin/openwebmail/openwebmail-shared.pl	Fri Mar 22 15:00:27 2002
@@ -35,8 +35,8 @@
 ###################### OPENWEBMAIL_INIT ###################
 # init routine to set globals, switch euid
 sub openwebmail_init {
-   readconf(\%config, \%config_raw, "$SCRIPT_DIR/etc/openwebmail.conf.default");
-   readconf(\%config, \%config_raw, "$SCRIPT_DIR/etc/openwebmail.conf") if (-f "$SCRIPT_DIR/etc/openwebmail.conf");
+   readconf(\%config, \%config_raw, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf.default");
+   readconf(\%config, \%config_raw, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf") if (-f "%%SYSCONFDIR%%/openwebmail/openwebmail.conf");
 
    # setuid is required if mails is located in user's dir
    if ( $>!=0 && ($config{'use_homedirspools'}||$config{'use_homedirfolders'}) ) {
@@ -100,7 +100,8 @@
    %style = %{&readstyle};
 
    ($prefs{'language'} =~ /^([\w\d\._]+)$/) && ($prefs{'language'} = $1);
-   require "etc/lang/$prefs{'language'}";
+   push (@INC, '%%SYSCONFDIR%%/openwebmail', ".");
+   require "lang/$prefs{'language'}";
    $lang_charset ||= 'iso-8859-1';
 
    getfolders(\@validfolders, \$folderusage);
