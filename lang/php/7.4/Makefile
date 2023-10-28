PHP_VERSION=	7.4.33
PHP_PKGSPEC=	<7.5
REVISION-main=	1

# keep these REVISIONs >= -stable for 7.3 cycle;
# libwebp gained additional WANTLIB
REVISION-gd=	1
# WANTLIB changed (ngtcp2_crypto_openssl to ngtcp2_crypto_quictls)
REVISION-curl=	1

CONFIGURE_ARGS=	--enable-inline-optimization
PHP_EXTENSIONS=	-xmlrpc

AUTOCONF_VERSION= 2.69

.include <bsd.port.mk>
