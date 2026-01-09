PHP_VERSION=	8.5.1
REVISION-main=	1
REVISION-apache= 1
REVISION-cgi=	1
REVISION-dbg=	1
REVISION-embed=	1
AUTOCONF_VERSION= 2.72

# override PORTROACH from ../Makefile.inc; no marker wanted for the highest
# branch, to allow finding new branches
PORTROACH=
PHP_PKGSPEC=	>=8.5,<8.6

CONFIGURE_ARGS=	--with-external-uriparser
LIB_DEPENDS=	www/uriparser
WANTLIB=	capstone uriparser
WANTLIB-pdo_odbc= iodbcinst

.include <bsd.port.mk>
