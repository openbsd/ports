$OpenBSD: patch-modemlights-modemlights.h,v 1.2 2001/09/19 16:28:58 naddy Exp $
--- modemlights/modemlights.h.orig	Fri Jun  8 21:23:34 2001
+++ modemlights/modemlights.h	Fri Jun  8 21:23:41 2001
@@ -17,6 +17,8 @@
 #include <net/if.h>
 
 #ifdef __OpenBSD__
+#  include <sys/timeout.h>
+#  include <net/ppp_defs.h>
 #  include <net/bpf.h>
 #  include <net/if_pppvar.h>
 #  include <net/if_ppp.h>
