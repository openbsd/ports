--- Makefile.PL.orig	Wed Jun 19 12:02:59 2002
+++ Makefile.PL	Mon Jul  8 15:04:48 2002
@@ -10,10 +10,10 @@
 # FEATURE FLAGS
 warn "\nPlease choose the features that match how libgd was built:\n";
 
-my $JPEG    = lc prompt('Build JPEG support?','y') eq 'y';
-my $TTF     = lc prompt('Build FreeType support?','y') eq 'y';
-my $XPM     = $^O !~ /^freebsd|MSWin32$/ && lc prompt('Build XPM support?','y') eq 'y';
-my $GIF		= lc prompt('Build GIF support (for patched versions of gd)?','n') eq 'y';
+my $JPEG    = 1;
+my $TTF     = 1;
+my $XPM     = 1;
+my $GIF	    = 0;
 
 my $FCGI    = 0;   # set to 1 to build compatability with fastCGI
 
