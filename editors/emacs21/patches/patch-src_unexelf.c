--- src/unexelf.c.orig	Tue Sep 26 07:01:57 2000
+++ src/unexelf.c	Fri Mar 22 23:02:09 2002
@@ -466,7 +466,7 @@ typedef struct {
 #define hdrNil ((pHDRR)0)
 #endif
 
-#ifdef __NetBSD__
+#if defined (__NetBSD__) || defined (__OpenBSD__)
 /*
  * NetBSD does not have normal-looking user-land ELF support.
  */
@@ -520,10 +520,12 @@ typedef struct {
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
