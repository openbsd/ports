$OpenBSD: patch-xml2rfc.tcl,v 1.4 2001/08/19 21:39:09 jakob Exp $

--- xml2rfc.tcl.orig	Sun Aug 19 19:25:18 2001
+++ xml2rfc.tcl	Sun Aug 19 19:25:57 2001
@@ -1,8 +1,3 @@
-#!/bin/sh
-# the next line restarts using wish \
-exec wish "$0" "$0" "$@"
-
-
 #
 # xml2rfc.tcl - convert technical memos written using XML to TXT/HTML/NROFF
 #
