/* OpenBSD specific configuration for rs6000 */

#include <rs6000/sysv4.h>

#define OBSD_HAS_CORRECT_SPECS
#define OBSD_HAS_DECLARE_FUNCTION_NAME
#define OBSD_HAS_DECLARE_FUNCTION_SIZE
#define OBSD_HAS_DECLARE_OBJECT

#include <openbsd.h>
/* XXX need to check ASM_WEAKEN_LABEL/ASM_GLOBALIZE_LABEL */

/* run-time target specifications */
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

/* collect2 support (Macros for initialization)
   -------------------------------------------- */

/* Don't tell collect2 we use COFF as we don't have (yet ?) a dynamic ld
   library with the proper functions to handle this -> collect2 will
   default to using nm. */
#undef OBJECT_FORMAT_COFF


