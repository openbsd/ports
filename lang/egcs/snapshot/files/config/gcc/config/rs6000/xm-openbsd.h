#include <xm-openbsd.h>
#include <rs6000/xm-rs6000.h>

/* don't get mistaken for systemV */
#undef USG

/* OpenBSD is using the gnu-linker, and has no COFF dynamic library 
   specific support on rs6000 yet. */
#undef COLLECT_EXPORT_LIST

/* OpenBSD is not a broken system... */
#undef IO_BUFFER_SIZE
