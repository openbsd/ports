# $OpenBSD: Makefile,v 1.8 2018/08/06 10:26:34 fcambus Exp $

COMMENT =	embeddable JavaScript engine

DISTNAME =	duktape-2.3.0
REVISION =	0
EXTRACT_SUFX =	.tar.xz

SHARED_LIBS +=	duktape	1.0	# 203

CATEGORIES =	lang

HOMEPAGE =	http://duktape.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m

MASTER_SITES =	http://duktape.org/

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
