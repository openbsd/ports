$OpenBSD: patch-src_help.c,v 1.1 2000/11/18 22:54:07 avsm Exp $
--- src/help.c.orig	Sat Nov 18 23:39:12 2000
+++ src/help.c	Sat Nov 18 23:40:30 2000
@@ -80,7 +80,9 @@ void cmd_help(int argc, char **argv)
 					li = li->next;
 				}
 			}
+#ifdef HAVE_LIBREADLINE
 		}
+#endif
 	}
 }
 
