--- display.c.orig	Thu Jul  6 15:43:29 2000
+++ display.c	Thu Jul  6 15:43:53 2000
@@ -717,8 +717,10 @@
     }
     else {
         buf->pos = l->len -1;
+#ifdef JP_CHARSET
         if (CharType(p[buf->pos]) == PC_KANJI2)
             buf->pos--;
+#endif                          /* JP_CHARSET */
     }
     cpos = COLPOS(l, buf->pos);
     buf->visualpos = cpos - buf->currentColumn;
