--- src/unexelf.c.orig	Mon May 15 02:14:02 2000
+++ src/unexelf.c	Sun Mar 17 20:03:34 2002
@@ -466,7 +466,7 @@ typedef struct {
 #define hdrNil ((pHDRR)0)
 #endif
 
-#ifdef __NetBSD__
+#if __NetBSD__
 /*
  * NetBSD does not have normal-looking user-land ELF support.
  */
@@ -500,6 +500,11 @@ typedef struct {
 
 #ifdef __OpenBSD__
 # include <sys/exec_elf.h>
+# ifdef __alpha__
+#  include <sys/exec_ecoff.h>
+#  define HDRR           struct ecoff_symhdr
+#  define pHDRR          HDRR *
+# endif
 #endif
 
 #if __GNU_LIBRARY__ - 0 >= 6
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
