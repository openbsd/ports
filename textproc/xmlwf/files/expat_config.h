/* keep in sync with /usr/src/lib/libexpat/expat_config.h */

/* quick and dirty conf for OpenBSD */

#define HAVE_ARC4RANDOM 1
#define HAVE_ARC4RANDOM_BUF 1
#define HAVE_UNISTD_H 1
#define XML_CONTEXT_BYTES 1024
#define XML_DTD 1
#define XML_GE 1
#define XML_NS 1

#include <endian.h>
#if BYTE_ORDER == LITTLE_ENDIAN
#define BYTEORDER 1234
#elif BYTE_ORDER == BIG_ENDIAN
#define BYTEORDER 4321
#else
#error "unknown byte order"
#endif
