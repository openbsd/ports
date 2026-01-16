PHP_VERSION=	8.4.17
AUTOCONF_VERSION= 2.72

PHP_PKGSPEC=	>=8.4,<8.5
ZEND_EXTENSIONS= -opcache
CONFIGURE_ARGS=	--enable-opcache

WANTLIB-pdo_odbc += iodbcinst
# for -embed
BUILD_DEPENDS=	devel/capstone/main

.include <bsd.port.mk>
