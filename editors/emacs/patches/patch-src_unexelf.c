$NetBSD: patch-az,v 1.1.1.1 2003/04/11 00:31:45 uebayasi Exp $

--- src/unexelf.c.orig	Mon May 15 02:14:02 2000
+++ src/unexelf.c	Thu Apr 17 01:14:07 2003
@@ -470,7 +470,7 @@ typedef struct {
 /*
  * NetBSD does not have normal-looking user-land ELF support.
  */
-# ifdef __alpha__
+# if defined(__alpha__) || defined(__sparc_v9__)
 #  define ELFSIZE	64
 # else
 #  define ELFSIZE	32
@@ -479,6 +479,7 @@ typedef struct {
 
 # ifndef PT_LOAD
 #  define PT_LOAD	Elf_pt_load
+#  define SHT_PROGBITS	Elf_sht_progbits
 #  define SHT_SYMTAB	Elf_sht_symtab
 #  define SHT_DYNSYM	Elf_sht_dynsym
 #  define SHT_NULL	Elf_sht_null
@@ -495,7 +496,7 @@ typedef struct {
 #  include <sys/exec_ecoff.h>
 #  define HDRR		struct ecoff_symhdr
 #  define pHDRR		HDRR *
-# endif
+# endif /* __alpha__ */
 #endif /* __NetBSD__ */
 
 #ifdef __OpenBSD__
@@ -512,7 +513,7 @@ typedef struct {
 # else
 #  define ElfBitsW(bits, type) Elf/**/bits/**/_/**/type
 # endif
-# ifdef _LP64
+# if defined (_LP64) || defined(__alpha__)
 #  define ELFSIZE 64
 # else
 #  define ELFSIZE 32
@@ -613,12 +614,34 @@ find_section (name, section_names, file_
       if (noerror)
 	return -1;
       else
-	fatal ("Can't find %s in %s.\n", name, file_name, 0);
+	fatal ("Can't find %s in %s.\n", name, file_name);
     }
 
   return idx;
 }
 
+#if defined(__alpha__)
+/* We are using  ECOFF symbols embedded in ELF. */
+
+void
+relocate_ecoff_symhdr(symhdr, diff)
+    HDRR *symhdr;
+    ElfW(Word) diff;
+{
+  symhdr->cbLineOffset += diff;
+  symhdr->cbDnOffset   += diff;
+  symhdr->cbPdOffset   += diff;
+  symhdr->cbSymOffset  += diff;
+  symhdr->cbOptOffset  += diff;
+  symhdr->cbAuxOffset  += diff;
+  symhdr->cbSsOffset   += diff;
+  symhdr->cbSsExtOffset += diff;
+  symhdr->cbFdOffset   += diff;
+  symhdr->cbRfdOffset  += diff;
+  symhdr->cbExtOffset  += diff;
+}
+#endif /* __alpha__ or __sony_news and systype_sysv */
+
 /* ****************************************************************
  * unexec
  *
@@ -1005,22 +1028,11 @@ unexec (new_name, old_name, data_start, 
 	  == 0)
 	{
 	  pHDRR symhdr = (pHDRR) (NEW_SECTION_H (nn).sh_offset + new_base);
-
-	  symhdr->cbLineOffset += new_data2_size;
-	  symhdr->cbDnOffset += new_data2_size;
-	  symhdr->cbPdOffset += new_data2_size;
-	  symhdr->cbSymOffset += new_data2_size;
-	  symhdr->cbOptOffset += new_data2_size;
-	  symhdr->cbAuxOffset += new_data2_size;
-	  symhdr->cbSsOffset += new_data2_size;
-	  symhdr->cbSsExtOffset += new_data2_size;
-	  symhdr->cbFdOffset += new_data2_size;
-	  symhdr->cbRfdOffset += new_data2_size;
-	  symhdr->cbExtOffset += new_data2_size;
+	  relocate_ecoff_symhdr(symhdr, new_data2_size);
 	}
 #endif /* __alpha__ */
 
-#if defined (__sony_news) && defined (_SYSTYPE_SYSV)
+#ifdef HAVE_MIPS_SBSS
       if (NEW_SECTION_H (nn).sh_type == SHT_MIPS_DEBUG
 	  && old_mdebug_index != -1) 
         {
@@ -1030,20 +1042,12 @@ unexec (new_name, old_name, data_start, 
 
 	  if (diff)
 	    {
-	      phdr->cbLineOffset += diff;
-	      phdr->cbDnOffset   += diff;
-	      phdr->cbPdOffset   += diff;
-	      phdr->cbSymOffset  += diff;
-	      phdr->cbOptOffset  += diff;
-	      phdr->cbAuxOffset  += diff;
-	      phdr->cbSsOffset   += diff;
-	      phdr->cbSsExtOffset += diff;
-	      phdr->cbFdOffset   += diff;
-	      phdr->cbRfdOffset  += diff;
-	      phdr->cbExtOffset  += diff;
+#ifdef DEBUG
+	      printf("Dont know how to relocate mdebug syms by %0x\n", diff);
+#endif
 	    }
 	}
-#endif /* __sony_news && _SYSTYPE_SYSV */
+#endif /* HAVE_MIPS_SBSS */
 
 #if __sgi
       /* Adjust  the HDRR offsets in .mdebug and copy the 
