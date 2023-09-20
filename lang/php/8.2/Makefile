BROKEN-sparc64= fibers requires either ucontext or asm code (not present for sparc64)

PHP_VERSION=	8.2.10
PHP_PKGSPEC=	>=8.2,<8.3

# no PORTROACH marker for the highest branch, to allow finding new branches
PORTROACH=

# keep these REVISIONs >= -stable for 7.3 cycle;
# libwebp gained additional WANTLIB
REVISION-gd=	0
# WANTLIB changed (ngtcp2_crypto_openssl to ngtcp2_crypto_quictls)
REVISION-curl=	0

AUTOCONF_VERSION=	2.71

.include <bsd.port.mk>
