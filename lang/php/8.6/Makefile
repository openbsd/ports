UNLINKED=	wip

PHP_VERSION=	8.6.0RC3
SITES=		https://github.com/php/php-src/archive/refs/tags/
WRKDIST=	${WRKDIR}/php-src-${DISTNAME}
EXTRACT_SUFX=	.tar.gz

AUTOCONF_VERSION= 2.73

# override PORTROACH from ../Makefile.inc; no marker wanted for the highest
# branch, to allow finding new branches
PORTROACH=
PHP_PKGSPEC=	>=8.6,<8.7

CONFIGURE_ARGS=	--enable-pic
LIB_DEPENDS=	devel/capstone/main
WANTLIB=	capstone

# needs unreleased version; use internal for now
#CONFIGURE_ARGS+=	--with-external-uriparser
#LIB_DEPENDS+=	www/uriparser
#WANTLIB+=	uriparser

WANTLIB-pdo_odbc= iodbcinst

.include <bsd.port.mk>
