--- xml2rfc.tcl.orig	Tue Jan 15 06:17:41 2002
+++ xml2rfc.tcl	Thu Jan 24 09:34:47 2002
@@ -1,6 +1,3 @@
-#!/bin/sh
-# the next line restarts using wish \
-exec wish "$0" "$0" "$@"
 
 
 #
@@ -10,7 +7,7 @@
 #
 
 
-if {[catch { package require xml 1.8 } result]} {
+if {[catch { package require xml 1.9 } result]} {
     global auto_path
 
     puts stderr "unable to find the TclXML package, did you install it?"
@@ -23,7 +20,7 @@
     return
 }
 
-if {[string compare [package require sgml] 1.6]} {
+if {[string compare [package require sgml] 1.7]} {
     global auto_path
 
     puts stderr \
