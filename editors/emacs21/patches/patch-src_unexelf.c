$OpenBSD: patch-src_unexelf.c,v 1.5 2003/07/05 00:27:08 naddy Exp $
--- src/unexelf.c.orig	Tue Oct 15 16:21:22 2002
+++ src/unexelf.c	Fri Jun 27 00:18:44 2003
@@ -537,7 +537,12 @@ typedef struct {
 
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
@@ -549,10 +554,12 @@ typedef struct {
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
