$OpenBSD: patch-modemlights-modemlights.h,v 1.1.1.1 2003/01/31 18:42:05 todd Exp $
--- modemlights/modemlights.h.orig	Sun Jul 21 17:24:03 2002
+++ modemlights/modemlights.h	Fri Aug 16 08:56:46 2002
@@ -16,6 +16,8 @@
 #include <net/if.h>
 
 #ifdef __OpenBSD__
+#  include <sys/timeout.h>
+#  include <net/ppp_defs.h>
 #  include <net/bpf.h>
 #  include <net/if_pppvar.h>
 #  include <net/if_ppp.h>
