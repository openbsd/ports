/* OpenBSD specific configuration for rs6000 */

#include "rs6000/sysv4.h"

/* XXX this small fragment is copied verbatim from common openbsd.h 
   configuration.
 */
/* OPENBSD_NATIVE is defined only when gcc is configured as part of
   the OpenBSD source tree, specifically through Makefile.bsd-wrapper.

   In such a case the include path can be trimmed as there is no
   distinction between system includes and gcc includes
 */
/* This configuration method, namely Makefile.bsd-wrapper and
   OPENBSD_NATIVE is NOT recommended for building cross-compilers
 */
#ifdef OPENBSD_NATIVE

#undef GCC_INCLUDE_DIR
#define GCC_INCLUDE_DIR "/usr/include"

/* The compiler is configured with ONLY the gcc/g++ standard headers */
#undef INCLUDE_DEFAULTS
#define INCLUDE_DEFAULTS			\
  {						\
    { GPLUSPLUS_INCLUDE_DIR, "G++", 1, 1 },	\
    { GCC_INCLUDE_DIR, "GCC", 0, 0 },		\
    { 0, 0, 0, 0 }				\
  }

/* Under OpenBSD, the normal location of the various *crt*.o files is the
   /usr/lib directory.  */
#define STANDARD_STARTFILE_PREFIX	"/usr/lib/"

#endif

/* Implicit calls to library routines
 * ---------------------------------- */
/* Use memcpy and memset instead of bcopy and bzero */
#define TARGET_MEM_FUNCTIONS

/* Miscellaneous parameters
 * ------------------------ */
/* tell libgcc2.c that OpenBSD targets support atexit */
#define HAVE_ATEXIT

/* Don't use the `xsTAG;' construct in DBX output; OpenBSD systems that
 * use DBX don't support it. */
#define DBX_NO_XREFS


/* Use VTABLE_THUNKS always: we don't have to worry about binary
   compatibility with older C++ code. */
#define DEFAULT_VTABLE_THUNKS 1

/* ----------------------------- */
#undef CPP_PREDEFINES
#define CPP_PREDEFINES \
 "-D__PPC -D__unix__ -D__OpenBSD__ -D__powerpc -Asystem(unix) -Asystem(OpenBSD) -Acpu(powerpc) -Amachine(powerpc)"

#undef LINK_SPEC
#define LINK_SPEC "-m elf32ppc %{shared:-shared} \
  %{!shared: \
    %{!static: \
      %{rdynamic:-export-dynamic} \
      %{!dynamic-linker:-dynamic-linker /usr/libexec/ld.so}} \
    %{static:-static}}"

#undef	LIB_DEFAULT_SPEC
#define LIB_DEFAULT_SPEC "%(lib_openbsd)"

#undef	STARTFILE_DEFAULT_SPEC
#define STARTFILE_DEFAULT_SPEC "%(startfile_openbsd)"

#undef	ENDFILE_DEFAULT_SPEC
#define ENDFILE_DEFAULT_SPEC "%(endfile_openbsd)"

#undef	LINK_START_DEFAULT_SPEC
#define LINK_START_DEFAULT_SPEC "%(link_start_openbsd)"

#undef	LINK_OS_DEFAULT_SPEC
#define LINK_OS_DEFAULT_SPEC "%(link_os_openbsd)"

#undef TARGET_VERSION
#define TARGET_VERSION fprintf (stderr, " (PowerPC OpenBSD)");

/* Define this macro as a C expression for the initializer of an
   array of string to tell the driver program which options are
   defaults for this target and thus do not need to be handled
   specially when using `MULTILIB_OPTIONS'.

   Do not define this macro if `MULTILIB_OPTIONS' is not defined in
   the target makefile fragment or if none of the options listed in
   `MULTILIB_OPTIONS' are set by default.  *Note Target Fragment::.  */

#undef	MULTILIB_DEFAULTS
#define	MULTILIB_DEFAULTS { "mbig", "mcall-openbsd" }

