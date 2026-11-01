#UNLINKED=	wip

PHP_VERSION=	8.6.0RC3
SITES=		https://github.com/php/php-src/archive/refs/tags/
WRKDIST=	${WRKDIR}/php-src-${DISTNAME}
EXTRACT_SUFX=	.tar.gz

AUTOCONF_VERSION= 2.73

# override PORTROACH from ../Makefile.inc; no marker wanted for the highest
# branch, to allow finding new branches
PORTROACH=
PHP_PKGSPEC=	>=8.6,<8.7

CONFIGURE_ARGS=	--enable-pic \
		--with-external-uriparser
LIB_DEPENDS=	devel/capstone/main \
		www/uriparser>=1.0.3
WANTLIB=	capstone uriparser

WANTLIB-pdo_odbc= iodbcinst

.include <bsd.port.mk>
