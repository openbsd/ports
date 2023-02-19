COMMENT=	extended C-shell with many useful features

DISTNAME=	tcsh-6.24.07
CATEGORIES=	shells
HOMEPAGE=	https://www.tcsh.org/

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://astron.com/pub/tcsh/ \
		https://astron.com/pub/tcsh/old/ \
		https://ftp.funet.fi/pub/mirrors/ftp.astron.com/pub/tcsh/ \
		https://ftp.funet.fi/pub/mirrors/ftp.astron.com/pub/tcsh/old/

WANTLIB=	c curses

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR} == "static"
CONFIGURE_ENV=	LDFLAGS="${STATIC}"
WANTLIB=
.endif

CONFIGURE_STYLE=gnu
# obsolete catopen(3) message catalogs
CONFIGURE_ARGS=	--disable-nls-catalogs --without-libiconv-prefix
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/acaux

AUTOCONF_VERSION=2.71
TEST_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS}
TEST_FLAGS=	AUTOCONF_VERSION=${AUTOCONF_VERSION}

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
