--- src/readline.c.orig	Tue Nov 14 06:53:28 2000
+++ src/readline.c	Sun Feb  4 10:38:00 2001
@@ -77,7 +77,7 @@ completion_generator (char *word, int st
 }
 
 /* gratuitously stolen from guile, guile-readline/readline.c */
-static void match_paren(int x, int k);
+static int match_paren(int x, int k);
 static int find_matching_paren(int k);
 static void init_bouncing_parens();
 
@@ -130,7 +130,7 @@ find_matching_paren(int k)
   return -1;
 }
 
-static void
+static int
 match_paren(int x, int k)
 {
   int tmp;
@@ -142,7 +142,7 @@ match_paren(int x, int k)
   /* Did we just insert a quoted paren?  If so, then don't bounce.  */
   if (rl_point - 1 >= 1
       && rl_line_buffer[rl_point - 2] == '\\')
-    return;
+    return 0;
 
   /* tmp = 200000 */
   timeout.tv_sec = 0 /* tmp / 1000000 */ ; 
@@ -159,6 +159,7 @@ match_paren(int x, int k)
     }
     rl_point = tmp;
   }
+  return 0;
 }
 
 #endif
