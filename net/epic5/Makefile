COMMENT=	enhanced programmable ircII client 5th generation

VERSION=	2.1.12
DISTNAME=	epic5-${VERSION}
CATEGORIES=	net
HOMEPAGE=	http://www.epicsol.org/
MAINTAINER=	Joey Beach <fro@disciples.com>
SITES=		http://ftp.epicsol.org/pub/epic/EPIC5-PRODUCTION/
REVISION=	1

# BSD
PERMIT_PACKAGE=	Yes

# uses pledge unveil
WANTLIB=	c crypto m curses ssl iconv

LIB_DEPENDS=	converters/libiconv

CONFIGURE_STYLE= gnu
# Only IrcII scripts and no compressed file loading
CONFIGURE_ARGS=	--without-perl \
		--without-ruby \
		--without-python \
		--without-libarchive

FLAVORS=	python
FLAVOR?=

.if ${FLAVOR:Mpython}
MODULES+=	lang/python
CONFIGURE_ARGS+=	--with-python
LIB_DEPENDS+=	${MODPY_LIB_DEPENDS}
WANTLIB+=	${MODPY_WANTLIB} intl pthread util
.endif

NO_TEST=	Yes

SEPARATE_BUILD=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/epic5/
	${INSTALL_DATA} ${WRKSRC}/UPDATES ${PREFIX}/share/doc/epic5/
	${INSTALL_DATA} ${FILESDIR}/epicrc.sample ${PREFIX}/share/epic5/script/

.include <bsd.port.mk>
