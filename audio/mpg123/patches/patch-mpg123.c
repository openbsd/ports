$OpenBSD: patch-mpg123.c,v 1.2 2001/04/24 00:48:12 naddy Exp $
--- mpg123.c.orig	Tue Jun 15 22:21:36 1999
+++ mpg123.c	Sat Apr 14 23:57:31 2001
@@ -177,6 +177,9 @@ void init_output(void)
         _exit(0);
       default: /* parent */
         xfermem_init_writer (buffermem);
+	if (xfermem_block(XF_WRITER, buffermem) == XF_CMD_TERMINATE) {
+	    intflag = TRUE;
+	}
         param.outmode = DECODE_BUFFER;
     }
   }
@@ -913,18 +916,6 @@ int main(int argc, char *argv[])
 				&dirname, &filename))
 				fprintf(stderr, "\nDirectory: %s", dirname);
 			fprintf(stderr, "\nPlaying MPEG stream from %s ...\n", filename);
-
-#if !defined(GENERIC)
-{
-     const char *term_type;
-         term_type = getenv("TERM");
-         if (!strcmp(term_type,"xterm"))
-         {
-           fprintf(stderr, "\033]0;%s\007", filename);
-         }
-}
-#endif
-
 		}
 
 #if !defined(WIN32) && !defined(GENERIC)
