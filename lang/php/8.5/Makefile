PHP_VERSION=	8.5.1
AUTOCONF_VERSION= 2.72

# override PORTROACH from ../Makefile.inc; no marker wanted for the highest
# branch, to allow finding new branches
PORTROACH=
PHP_PKGSPEC=	>=8.5,<8.6

WANTLIB-pdo_odbc= iodbcinst
WANTLIB-apache=	capstone
WANTLIB-cgi=	capstone
WANTLIB-dbg=	capstone

.include <bsd.port.mk>
