--- termcap.c.orig	Mon Jan 23 04:07:10 1995
+++ termcap.c	Wed Jan 17 11:45:33 2001
@@ -17,6 +17,7 @@
 675 Mass Ave, Cambridge, MA 02139, USA.  */ 
 
 #include <stdio.h>
+#include <stdlib.h>
 #include <sys/types.h>
 #include <sys/stat.h>
 #include "config.h"
@@ -27,14 +28,14 @@
 #include "queue.h"
 #include "termcap.h"
 
-int dopadding=0;
-char *joeterm=0;
-
 #ifdef TERMINFO
-extern char *tgoto();
-extern char *tgetstr();
+#include <curses.h>
+#include <term.h>
 #endif
 
+int dopadding=0;
+char *joeterm=0;
+
 /* Default termcap entry */
 
 char defentry[]=
@@ -275,7 +276,8 @@
  *pp++=0;
  loop1:
  if(pp[0]==' ' || pp[0]=='\t') goto loop;
- for(q=0;pp[q] && pp[q]!='#' && pp[q]!='=' && pp[q]!='@' && pp[q]!=':';++q);
+ q=0; if (pp[q]=='@') q++;
+ for(;pp[q] && pp[q]!='#' && pp[q]!='=' && pp[q]!='@' && pp[q]!=':';++q);
  qq=pp;
  c=pp[q]; pp[q]=0;
  if(c) pp+=q+1;
