--- rdoff/rdf2bin.c.orig	Tue Feb 19 14:08:57 2008
+++ rdoff/rdf2bin.c	Mon Apr 21 15:18:26 2008
@@ -119,9 +119,9 @@ int main(int argc, char **argv)
         return 1;
     }
 
-    if (fwrite(m->t, 1, m->f.seg[0].length, of) != m->f.seg[0].length ||
-        fwrite(padding, 1, codepad, of) != codepad ||
-        fwrite(m->d, 1, m->f.seg[1].length, of) != m->f.seg[1].length) {
+    if (fwrite(m->t, 1, m->f.seg[0].length, of) != (unsigned int)m->f.seg[0].length ||
+        fwrite(padding, 1, codepad, of) != (unsigned int)codepad ||
+        fwrite(m->d, 1, m->f.seg[1].length, of) != (unsigned int)m->f.seg[1].length) {
         fprintf(stderr, "rdf2bin: error writing to %s\n", *argv);
         return 1;
     }
