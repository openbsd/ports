# $OpenBSD: Makefile,v 1.12 2020/04/15 14:34:50 fcambus Exp $

COMMENT =	embeddable JavaScript engine

DISTNAME =	duktape-2.5.0
EXTRACT_SUFX =	.tar.xz
REVISION =	0

SHARED_LIBS +=	duktape	1.2	# 205

CATEGORIES =	lang

HOMEPAGE =	https://duktape.org/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c m

MASTER_SITES =	https://duktape.org/

USE_GMAKE =	Yes

ALL_TARGET =	all duk

MAKE_FLAGS =	CC="${CC}" REAL_VERSION="${LIBduktape_VERSION}"

MAKE_FILE =	Makefile.sharedlibrary

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/duk ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/src/duk{_config,tape}.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libduktape.so.${LIBduktape_VERSION} \
		${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/duktape
	${INSTALL_DATA} ${WRKSRC}/mandel.js ${PREFIX}/share/examples/duktape

.include <bsd.port.mk>
