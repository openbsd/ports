PHP_VERSION=	8.5.1
REVISION-main=	0
REVISION-apache= 0
REVISION-cgi=	0
REVISION-dbg=	0
AUTOCONF_VERSION= 2.72

# override PORTROACH from ../Makefile.inc; no marker wanted for the highest
# branch, to allow finding new branches
PORTROACH=
PHP_PKGSPEC=	>=8.5,<8.6

CONFIGURE_ARGS=	--with-external-uriparser
LIB_DEPENDS-main= www/uriparser
WANTLIB-main=	uriparser
WANTLIB-pdo_odbc= iodbcinst
WANTLIB-apache=	capstone uriparser
WANTLIB-cgi=	capstone uriparser
WANTLIB-dbg=	capstone uriparser

.include <bsd.port.mk>
