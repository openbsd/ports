/* ansi.h stub to fix _BSD_VA_LIST_ type and C++ issues. */
#ifndef _ANSI_H_
 #include_next <machine/ansi.h>
#undef _BSD_VA_LIST_
#define _BSD_VA_LIST_	__builtin_va_list
/* in ANSI C++, wchar_t is a built-in type, NOT a typedef */
#if defined(__cplusplus)
#ifdef _BSD_WCHAR_T_
#undef _BSD_WCHAR_T_
#endif
#endif
#endif
