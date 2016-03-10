# $OpenBSD: Makefile,v 1.10 2016/03/10 20:15:07 naddy Exp $

COMMENT =		portable library for real-time communications

V =			0.4.15
DISTNAME =		re-${V}
SHARED_LIBS =		re	2.1
CATEGORIES +=		devel

WANTLIB = crypto pthread ssl z

MAKE_ENV +=		LIB_SUFFIX=.so.${LIBre_VERSION}
MAKE_ENV +=		LIBS="-lssl -lcrypto -lz -lpthread"

ALL_TARGET =		libre.a libre.so.${LIBre_VERSION}
TEST_TARGET =		test

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/re
	${INSTALL_DATA} ${WRKBUILD}/include/*.h ${PREFIX}/include/re
	${INSTALL_DATA} ${WRKBUILD}/libre.a ${PREFIX}/lib
	[ ! -f ${WRKBUILD}/libre.so.${LIBre_VERSION} ] || ${INSTALL_DATA} \
		${WRKBUILD}/libre.so.${LIBre_VERSION} ${PREFIX}/lib

.include <bsd.port.mk>
