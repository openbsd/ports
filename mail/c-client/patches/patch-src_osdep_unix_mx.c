--- src/osdep/unix/mx.c.orig	Fri Sep 15 04:33:34 2000
+++ src/osdep/unix/mx.c	Fri Sep 15 04:34:51 2000
@@ -882,6 +882,7 @@
     if (f&fANSWERED) elt->answered = T;
     if (f&fDRAFT) elt->draft = T;
     elt->user_flags |= uf;
+    set_mbx_protections (mailbox,tmp);
     mx_unlockindex (astream);	/* unlock index */
   }
   else {
