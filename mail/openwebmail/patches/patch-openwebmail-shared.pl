--- cgi-bin/openwebmail/openwebmail-shared.pl.orig	Thu Jun 27 17:21:07 2002
+++ cgi-bin/openwebmail/openwebmail-shared.pl	Thu Jun 27 17:23:21 2002
@@ -50,8 +50,8 @@
 ###################### OPENWEBMAIL_INIT ###################
 # init routine to set globals, switch euid
 sub openwebmail_init {
-   readconf(\%config, \%config_raw, "$SCRIPT_DIR/etc/openwebmail.conf.default");
-   readconf(\%config, \%config_raw, "$SCRIPT_DIR/etc/openwebmail.conf") if (-f "$SCRIPT_DIR/etc/openwebmail.conf");
+   readconf(\%config, \%config_raw, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf.default");
+   readconf(\%config, \%config_raw, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf") if (-f "%%SYSCONFDIR%%/openwebmail/openwebmail.conf");
    # setuid is required if mails is located in user's dir
    if ( $>!=0 && ($config{'use_homedirspools'}||$config{'use_homedirfolders'}) ) {
       print "Content-type: text/html\n\n'$0' must setuid to root"; exit 0;
@@ -127,7 +127,8 @@
    %style = %{&readstyle};
 
    ($prefs{'language'} =~ /^([\w\d\._]+)$/) && ($prefs{'language'} = $1);
-   require "etc/lang/$prefs{'language'}";
+   push (@INC, '%%SYSCONFDIR%%/openwebmail', ".");
+   require "lang/$prefs{'language'}";
    $lang_charset ||= 'iso-8859-1';
 
    getfolders(\@validfolders, \$folderusage);
