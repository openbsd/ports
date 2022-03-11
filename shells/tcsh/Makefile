COMMENT=	extended C-shell with many useful features

DISTNAME=	tcsh-6.22.04
CATEGORIES=	shells
HOMEPAGE=	http://www.tcsh.org/

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	ftp://ftp.astron.com/pub/tcsh/ \
		ftp://ftp.astron.com/pub/tcsh/old/

WANTLIB=	c curses

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR} == "static"
CONFIGURE_ENV=	LDFLAGS="${STATIC}"
WANTLIB=
.endif

CONFIGURE_STYLE=gnu
# obsolete catopen(3) message catalogs
CONFIGURE_ARGS+=--disable-nls-catalogs

AUTOCONF_VERSION=2.69
TEST_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS}
TEST_FLAGS=	AUTOCONF_VERSION=${AUTOCONF_VERSION}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcsh ${PREFIX}/bin/tcsh
	${INSTALL_MAN} ${WRKSRC}/tcsh.man ${PREFIX}/man/man1/tcsh.1

.include <bsd.port.mk>
