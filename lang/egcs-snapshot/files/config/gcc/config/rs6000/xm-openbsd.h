#include <xm-openbsd.h>
#include <rs6000/xm-rs6000.h>

/* OpenBSD is using the gnu-linker, and has no COFF dynamic library 
   specific support on rs6000 yet. */
#undef COLLECT_EXPORT_LIST
