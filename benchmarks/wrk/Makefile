# $OpenBSD: Makefile,v 1.2 2019/07/12 20:43:43 sthen Exp $

COMMENT =	modern HTTP benchmarking tool

GH_ACCOUNT =	wg
GH_PROJECT =	wrk
GH_TAGNAME =	4.1.0

CATEGORIES =	benchmarks

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Apache 2.0, BSD, MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c crypto luajit-5.1 m pthread ssl

LIB_DEPENDS =	lang/luajit

USE_GMAKE =	Yes

MAKE_ENV =	WITH_LUAJIT=${LOCALBASE} WITH_OPENSSL=/usr VER=${GH_TAGNAME}

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
MAKE_ENV +=	LIBS=-lc++abi
WANTLIB +=	c++abi
.endif

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wrk ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wrk
	${INSTALL_DATA} ${WRKSRC}/{README.md,SCRIPTING} ${PREFIX}/share/doc/wrk
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wrk
	${INSTALL_DATA} ${WRKSRC}/scripts/* ${PREFIX}/share/examples/wrk

.include <bsd.port.mk>
