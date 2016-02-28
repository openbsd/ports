# $OpenBSD: Makefile,v 1.9 2016/02/28 13:18:42 czarkoff Exp $

COMMENT =		portable library for real-time communications

V =			0.4.15
DISTNAME =		re-${V}
SHARED_LIBS =		re	2.1
CATEGORIES +=		devel

WANTLIB = crypto pthread ssl z

MAKE_ENV +=		LIB_SUFFIX=.so.${LIBre_VERSION}
MAKE_ENV +=		LIBS="-lssl -lcrypto -lz -lpthread"

ALL_TARGET =		libre.a
TEST_TARGET =		test

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/re
	${INSTALL_DATA} ${WRKBUILD}/include/*.h ${PREFIX}/include/re
	${INSTALL_DATA} ${WRKBUILD}/libre.a ${PREFIX}/lib
	[ ! -f ${WRKBUILD}/libre.so.${LIBre_VERSION} ] || ${INSTALL_DATA} \
		${WRKBUILD}/libre.so.${LIBre_VERSION} ${PREFIX}/lib

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS} == No
ALL_TARGET +=		libre.so.${LIBre_VERSION}
.endif
