$OpenBSD: patch-Makefile.PL,v 1.1.1.1 2000/10/09 00:04:58 avsm Exp $
--- Makefile.PL.orig	Sat Jun 26 03:23:23 1999
+++ Makefile.PL	Fri Sep 29 22:49:21 2000
@@ -11,8 +11,8 @@ open(MAKEFILE, ">Makefile") ||
 %vars = ( map { split(/=/, $_) } @ARGV );
 my $opt_prefix  = defined($vars{'PREFIX'}) ?
 			"-prefix $vars{'PREFIX'}" : "";
-my $opt_binpath = defined($vars{'INSTALLSCRIPT'}) ?
-			"-prefix $vars{'INSTALLSCRIPT'}" : "";
+my $opt_binpath = defined($vars{'INSTALLBIN'}) ?
+			"-binpath $vars{'INSTALLBIN'}" : "";
 my $opt_libpath = defined($vars{'LIB'}) ?
 			"-libpath $vars{'LIB'}" :
 		  defined($vars{'INSTALLSITELIB'}) ?
@@ -20,7 +20,7 @@ my $opt_libpath = defined($vars{'LIB'}) 
 		  defined($vars{'INSTALLPRIVLIB'}) ?
 			"-libpath $vars{'INSTALLPRIVLIB'}" : "";
 my $opt_manpath = defined($vars{'INSTALLMAN1DIR'}) ?
-			"-prefix $vars{'INSTALLMAN1DIR'}" : "";
+			"-manpath $vars{'INSTALLMAN1DIR'}" : "";
    $opt_manpath =~ s/man1$//;
 
 my $instme_args = "$opt_prefix $opt_binpath $opt_libpath $opt_manpath";
@@ -43,7 +43,7 @@ default: pod2man
 	\$(CHMOD) -R a+r,a+X .
 
 install:
-	\$(PERL) \$(INSTALLPRG) -batch $instme_args
+	\$(PERL) \$(INSTALLPRG) -batch $instme_args -docpath $vars{'PREFIX'}/share/doc/mhonarc
 
 install-ask:
 	\$(PERL) \$(INSTALLPRG) $instme_args
