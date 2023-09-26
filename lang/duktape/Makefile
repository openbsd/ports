COMMENT =	embeddable JavaScript engine

DISTNAME =	duktape-2.7.0
EXTRACT_SUFX =	.tar.xz
REVISION =	1

SHARED_LIBS +=	duktape	                 1.2 # 207
SHARED_LIBS +=	duktaped                 1.2 # 207

CATEGORIES =	lang

HOMEPAGE =	https://duktape.org/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c m

SITES =		https://duktape.org/

USE_GMAKE =	Yes

ALL_TARGET =	all duk

MAKE_FLAGS =	CC="${CC}" REAL_VERSION="${LIBduktape_VERSION}"

MAKE_FILE =	Makefile.sharedlibrary

NO_TEST =	Yes

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/duk ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/duktape
	${INSTALL_DATA} ${WRKSRC}/mandel.js ${PREFIX}/share/examples/duktape
	find ${PREFIX}/lib -type l -delete

.include <bsd.port.mk>
