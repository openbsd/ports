/* ansi.h stub to fix _BSD_VA_LIST_ type */
#ifndef _ANSI_H_
#include_next <machine/ansi.h>
#undef _BSD_VA_LIST_
#define _BSD_VA_LIST_	__builtin_va_list
#endif
