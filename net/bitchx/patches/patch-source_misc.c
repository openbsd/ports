--- source/misc.c.orig	Tue Dec 12 17:05:45 2000
+++ source/misc.c	Tue Dec 12 17:07:24 2000
@@ -2641,6 +2641,11 @@
 		switch(type)
 		{
 		case T_A :
+			if (dlen != sizeof(struct in_addr))
+			{
+				cp += dlen;
+				break;
+			}
 			rptr->re_he.h_length = dlen;
 			if (ans == 1)
 				rptr->re_he.h_addrtype=(class == C_IN) ?
@@ -2687,6 +2692,7 @@
 			*alias = NULL;
 			break;
 		default :
+			cp += dlen;
 			break;
 		}
 	}
