--- mpg123.c.orig	Tue Jun 15 16:21:36 1999
+++ mpg123.c	Wed Aug  2 06:10:40 2000
@@ -177,6 +177,9 @@
         _exit(0);
       default: /* parent */
         xfermem_init_writer (buffermem);
+	if (xfermem_block(XF_WRITER, buffermem) == XF_CMD_TERMINATE) {
+	    intflag = TRUE;
+	}
         param.outmode = DECODE_BUFFER;
     }
   }
@@ -918,7 +921,7 @@
 {
      const char *term_type;
          term_type = getenv("TERM");
-         if (!strcmp(term_type,"xterm"))
+         if (term_type && !strcmp(term_type,"xterm"))
          {
            fprintf(stderr, "\033]0;%s\007", filename);
          }
