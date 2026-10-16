PHP_VERSION=	8.5.11
REVISION-main=	1

AUTOCONF_VERSION= 2.73

PHP_PKGSPEC=	>=8.5,<8.6

CONFIGURE_ARGS=	--with-external-uriparser \
		--with-pic
LIB_DEPENDS=	devel/capstone/main \
		www/uriparser
WANTLIB=	capstone uriparser
WANTLIB-pdo_odbc= iodbcinst

.include <bsd.port.mk>
