--- ttfm.sh.orig	Fri Jan 19 13:09:34 2001
+++ ttfm.sh	Fri Jan 19 13:14:56 2001
@@ -40,7 +40,7 @@
 
 export PREFIX; PREFIX=/usr/local
 export PATH; PATH=/bin:/sbin:/usr/bin:/usr/sbin:$PREFIX/bin:$PREFIX/sbin
-export DefaultFontPath; DefaultFontPath=$PREFIX/share/fonts/TrueType
+export DefaultFontPath; DefaultFontPath=$PREFIX/lib/X11/fonts/TrueType
 export ScriptDir; ScriptDir=$PREFIX/share/ttfm
 export ScriptSubfix; ScriptSubfix="ttfm"
 #KEEP_FONT="yes"	# FreeBSD's port/package system will handle this.
