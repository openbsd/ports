PHP_VERSION=	8.5.7
REVISION=	0
REVISION-main=	1

AUTOCONF_VERSION= 2.72

# override PORTROACH from ../Makefile.inc; no marker wanted for the highest
# branch, to allow finding new branches
PORTROACH=
PHP_PKGSPEC=	>=8.5,<8.6

CONFIGURE_ARGS=	--with-external-uriparser
LIB_DEPENDS=	devel/capstone/main \
		www/uriparser
WANTLIB=	capstone uriparser
WANTLIB-pdo_odbc= iodbcinst

.include <bsd.port.mk>
