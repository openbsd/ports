$OpenBSD: patch-src_unexelf.c,v 1.4 2003/07/06 15:27:52 naddy Exp $
--- src/unexelf.c.orig	Sun Jul  6 14:21:21 2003
+++ src/unexelf.c	Sun Jul  6 14:24:34 2003
@@ -500,7 +500,12 @@ typedef struct {
 
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
@@ -512,10 +517,12 @@ typedef struct {
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
@@ -613,7 +620,7 @@ find_section (name, section_names, file_
       if (noerror)
 	return -1;
       else
-	fatal ("Can't find %s in %s.\n", name, file_name, 0);
+	fatal ("Can't find %s in %s.\n", name, file_name);
     }
 
   return idx;
