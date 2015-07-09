# $OpenBSD: Makefile,v 1.5 2015/07/09 10:36:24 czarkoff Exp $

COMMENT =		portable library for real-time communications

V =			0.4.13
DISTNAME =		re-${V}
REVISION =		0
SHARED_LIBS =		re	1.2
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
