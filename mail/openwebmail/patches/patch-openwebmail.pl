--- cgi-bin/openwebmail/openwebmail.pl.orig	Fri Mar 22 15:01:30 2002
+++ cgi-bin/openwebmail/openwebmail.pl	Fri Mar 22 15:02:40 2002
@@ -37,8 +37,8 @@
 local ($lang_charset, %lang_folders, %lang_sortlabels, %lang_text, %lang_err);
 local $folderdir;
 
-readconf(\%config, \%config_raw, "$SCRIPT_DIR/etc/openwebmail.conf.default");
-readconf(\%config, \%config_raw, "$SCRIPT_DIR/etc/openwebmail.conf") if (-f "$SCRIPT_DIR/etc/openwebmail.conf");
+readconf(\%config, \%config_raw, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf.default");
+readconf(\%config, \%config_raw, "%%SYSCONFDIR%%/openwebmail/openwebmail.conf") if (-f "%%SYSCONFDIR%%/openwebmail/openwebmail.conf");
 
 if ( $config{'logfile'} ne 'no' && ! -f $config{'logfile'} ) {
    my $mailgid=getgrnam('mail');
@@ -58,7 +58,8 @@
 %style = %{&readstyle};
 
 ($prefs{'language'} =~ /^([\w\d\._]+)$/) && ($prefs{'language'} = $1);
-require "etc/lang/$prefs{'language'}";
+push (@INC, '%%SYSCONFDIR%%/openwebmail', ".");
+require "lang/$prefs{'language'}";
 $lang_charset ||= 'iso-8859-1';
 
 ####################### MAIN ##########################
