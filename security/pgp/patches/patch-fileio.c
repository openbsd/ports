--- fileio.c.orig	Fri Apr  2 14:46:36 1999
+++ fileio.c	Fri Apr  2 14:47:58 1999
@@ -1636,7 +1636,11 @@
     PGP_SYSTEM_DIR, "SYS$LOGIN:", "SYS$LOGIN:[pgp]",
     "SYS$LOGIN:[pgp26]", "SYS$LOGIN:[pgp263]", "[-]",
 #elif defined(UNIX)
-    "$PGPPATH", "", "pgp", "pgp26", "pgp263", PGP_SYSTEM_DIR,
+    "$PGPPATH", 
+#ifdef PGP_DOC_DIR
+	PGP_DOC_DIR,
+#endif
+	 "", "pgp", "pgp26", "pgp263", PGP_SYSTEM_DIR,
     "$HOME/.pgp", "$HOME", "$HOME/pgp", "$HOME/pgp26", "..",
 #elif defined(AMIGA)
     "$PGPPATH", "", "pgp", "pgp26", ":pgp", ":pgp26", ":pgp263", 
