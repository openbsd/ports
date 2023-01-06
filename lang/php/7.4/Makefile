PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.33
PHP_PKGSPEC=	<7.5

# keep REVISION-curl >= -stable for 7.2 cycle;
# curl gained additional WANTLIB post 7.2-release
REVISION-curl=	0

CONFIGURE_ARGS=	--enable-inline-optimization
PHP_EXTENSIONS=	-xmlrpc

.include <bsd.port.mk>
