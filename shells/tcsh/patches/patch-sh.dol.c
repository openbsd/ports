$OpenBSD: patch-sh.dol.c,v 1.4 2002/02/01 03:06:53 itojun Exp $

--- sh.dol.c-	Fri Feb  1 11:58:13 2002
+++ sh.dol.c	Fri Feb  1 11:58:28 2002
@@ -585,10 +585,8 @@
 		c = DgetC(0);
 	    } while (Isdigit(c));
 	    unDredc(c);
-	    if (subscr < 0) {
-		dolerror(vp->v_name);
-		return;
-	    }
+	    if (subscr < 0)
+		stderror(ERR_RANGE);
 	    if (subscr == 0) {
 		if (bitset) {
 		    dolp = dolzero ? STR1 : STR0;
