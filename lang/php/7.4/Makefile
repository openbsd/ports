PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.28

PHP_PKGSPEC=	<7.5
# keep >= 0 for 7.0->7.1
REVISION=	1
REVISION-main=	2
REVISION-pdo_dblib=	2

DEBUG_PACKAGES=		${BUILD_PACKAGES}

CONFIGURE_ARGS+=	--enable-inline-optimization

PHP_EXTENSIONS+=	-xmlrpc

.include <bsd.port.mk>
