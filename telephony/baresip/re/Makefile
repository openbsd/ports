# $OpenBSD: Makefile,v 1.3 2015/03/22 06:13:37 czarkoff Exp $

COMMENT =		portable library for real-time communications

V =			0.4.12
DISTNAME =		re-${V}
SHARED_LIBS =		re	1.0
CATEGORIES +=		devel

WANTLIB = crypto pthread ssl z

MAKE_FLAGS +=		LIB_SUFFIX=.so.${LIBre_VERSION}
MAKE_FLAGS +=		MK=/dev/null

ALL_TARGET =		libre.a

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
