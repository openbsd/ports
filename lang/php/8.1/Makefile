BROKEN-sparc64=	fibers requires either ucontext or asm code (not present for sparc64)

PHP_VERSION=	8.1.24
PHP_PKGSPEC=	>=8.1,<8.2

# keep these REVISIONs >= -stable for 7.3 cycle;
# libwebp gained additional WANTLIB
REVISION-gd=	0
# WANTLIB changed (ngtcp2_crypto_openssl to ngtcp2_crypto_quictls)
REVISION-curl=	0

AUTOCONF_VERSION=	2.71

DEFAULT_PHP=	Yes
USE_GMAKE=	Yes

.include <bsd.port.mk>
