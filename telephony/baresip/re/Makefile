# $OpenBSD: Makefile,v 1.17 2017/09/22 07:25:26 feinerer Exp $

COMMENT =		portable library for real-time communications

V =			0.5.5
DISTNAME =		re-${V}
SHARED_LIBS =		re	4.0
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
