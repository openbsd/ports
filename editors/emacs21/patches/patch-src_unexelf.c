$OpenBSD: patch-src_unexelf.c,v 1.4 2002/03/28 00:13:49 mark Exp $
--- src/unexelf.c.orig	Tue Sep 26 07:01:57 2000
+++ src/unexelf.c	Sun Mar 24 18:35:20 2002
@@ -508,7 +508,12 @@ typedef struct {
 
 #ifdef __OpenBSD__
 # include <sys/exec_elf.h>
-#endif
+# ifdef __alpha__
+#  include <sys/exec_ecoff.h>
+#  define HDRR		struct ecoff_symhdr
+#  define pHDRR		HDRR *
+# endif /* __alpha__ */
+#endif /* __OpenBSD__ */
 
 #if __GNU_LIBRARY__ - 0 >= 6
 # include <link.h>	/* get ElfW etc */
@@ -520,10 +525,12 @@ typedef struct {
 # else
 #  define ElfBitsW(bits, type) Elf/**/bits/**/_/**/type
 # endif
-# ifdef _LP64
-#  define ELFSIZE 64
-# else
-#  define ELFSIZE 32
+# ifndef __OpenBSD__
+#  ifdef _LP64
+#   define ELFSIZE 64
+#  else
+#   define ELFSIZE 32
+#  endif
 # endif
   /* This macro expands `bits' before invoking ElfBitsW.  */
 # define ElfExpandBitsW(bits, type) ElfBitsW (bits, type)
