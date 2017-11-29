# $OpenBSD: Makefile,v 1.5 2017/11/29 13:57:47 bcallah Exp $

COMMENT =	embeddable JavaScript engine

DISTNAME =	duktape-2.2.0
REVISION =	0
EXTRACT_SUFX =	.tar.xz

SHARED_LIBS +=	duktape                   0.0 # 0.0

CATEGORIES =	lang

HOMEPAGE =	http://duktape.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m

MASTER_SITES =	${HOMEPAGE}

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
