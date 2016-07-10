# $OpenBSD: Makefile,v 1.12 2016/07/10 19:09:20 czarkoff Exp $

COMMENT =		portable library for real-time communications

V =			0.4.17
DISTNAME =		re-${V}
SHARED_LIBS =		re	2.3
CATEGORIES +=		devel

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
