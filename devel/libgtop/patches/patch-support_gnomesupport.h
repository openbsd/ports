# $OpenBSD: patch-support_gnomesupport.h,v 1.1.1.1 2001/09/13 20:45:46 todd Exp $
--- support/gnomesupport.h.orig	Tue Feb 27 14:27:58 2001
+++ support/gnomesupport.h	Mon Aug 27 17:23:18 2001
@@ -5,37 +5,11 @@
 #define GNOMESUPPORT_H
 
 #include <stddef.h>		/* for size_t */
-#include <stdarg.h>
-#include <sys/types.h>
-#define dirent direct
-#define NAMLEN(dirent) (dirent)->d_namlen
 
 #ifdef __cplusplus
 extern "C" {
 #endif /* __cplusplus */
 
-/* Copies len bytes from src to dest. */
-void * memmove (void */*dest*/, const void */*src*/, size_t /*len*/);
-
-/* Generate a unique temporary file name from TEMPLATE.
-   The last six characters of TEMPLATE must be ;
-   they are replaced with a string that makes the filename
-   unique.  Returns a file descriptor open on the file for
-   reading and writing.  */
-int mkstemp (char */*template*/);
-
-/* Scan the directory DIR, calling SELECTOR on each directory
-   entry.  Entries for which SELECTOR returns nonzero are
-   individually malloc'd, sorted using qsort with CMP, and
-   collected in a malloc'd array in *NAMELIST.  Returns the
-   number of entries selected, or -1 on error.  */
-int scandir (const char */*dir*/, struct dirent ***/*namelist*/,
-             int (*/*selector*/) (struct dirent *),
-             int (*/*cmp*/) (const void *, const void *));
-
-/* Function to compare two `struct dirent's alphabetically.  */
-int alphasort (const void */*a*/, const void */*b*/);
-
 /* Return a malloc'd copy of at most N bytes of STRING.  The
    resultant string is terminated even if no null terminator
    appears before STRING[N].  */
@@ -45,49 +19,6 @@ char * strndup (const char */*s*/, size_
    characters.  If no '\0' terminator is found in that many
    characters, return MAXLEN.  */
 size_t strnlen (const char */*string*/, size_t /*maxlen*/);
-
-/* Divide S into tokens separated by characters in DELIM.
-   Information passed between calls are stored in SAVE_PTR.  */
-char * strtok_r (char */*s*/, const char */*delim*/,
-                 char **/*save_ptr*/);
-
-/* Convert the initial portion of the string pointed to by
-   nptr to double representation and return the converted value.
-   If endptr is not NULL, a pointer to the character after the
-   last character used in the conversion is stored in the
-   location referenced by endptr. */
-double strtod (const char */*nptr*/, char **/*endptr*/);
-
-/* Convert the initial portion of the string pointed to by
-   nptr to a long integer value according to the given base.
-   If endptr is not NULL, a pointer to the character after the
-   last character used in the conversion is stored in the
-   location referenced by endptr. */
-long int strtol (const char */*nptr*/, char **/*endptr*/, int /*base*/);
-
-/* Write formatted output to a string dynamically allocated with
-   `malloc'.  Store the address of the string in *PTR.  */
-int vasprintf (char **/*ptr*/, const char */*format*/,
-               va_list /*args*/);
-int asprintf (char **/*ptr*/, const char */*format*/, ...);
-
-/* Maximum chars of output to write is MAXLEN.  */
-int vsnprintf (char */*str*/, size_t /*maxlen*/,
-               char */*fmt*/, va_list /*ap*/);
-int snprintf (char */*str*/, size_t /*maxlen*/,
-              char */*fmt*/, ...);
-
-/* Return the canonical absolute name of file NAME.  A canonical name
-   does not contain any `.', `..' components nor any repeated path
-   separators ('/') or symlinks.  All path components must exist.
-   If the canonical name is PATH_MAX chars or more, returns null with
-   `errno' set to ENAMETOOLONG; if the name fits in fewer than PATH_MAX
-   chars, returns the name in RESOLVED.  If the name cannot be resolved
-   and RESOLVED is non-NULL, it contains the path of the first component
-   that cannot be resolved.  If the path can be resolved, RESOLVED
-   holds the same value as the value returned.  */
-
-char *realpath (char */*path*/, char /*resolved_path*/[]);
 
 #ifdef __cplusplus
 }
