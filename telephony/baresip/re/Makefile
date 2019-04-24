# $OpenBSD: Makefile,v 1.21 2019/04/24 16:26:57 sthen Exp $

COMMENT =		portable library for real-time communications

V =			0.5.9
DISTNAME =		re-${V}
SHARED_LIBS =		re	5.1
CATEGORIES +=		devel
REVISION =		0

WANTLIB = crypto pthread ssl z

MAKE_ENV +=		LIB_SUFFIX=.so.${LIBre_VERSION}
MAKE_ENV +=		LIBS="-lssl -lcrypto -lz -lpthread"

ALL_TARGET =		libre.a libre.so.${LIBre_VERSION}

NO_TEST =		yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/re
	${INSTALL_DATA} ${WRKBUILD}/include/*.h ${PREFIX}/include/re
	${INSTALL_DATA} ${WRKBUILD}/libre.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKBUILD}/libre.so.${LIBre_VERSION} ${PREFIX}/lib

.include <bsd.port.mk>
