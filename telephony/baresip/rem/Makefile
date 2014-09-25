# $OpenBSD: Makefile,v 1.1.1.1 2014/09/25 19:32:37 sthen Exp $

COMMENT =		library for real-time audio and video processing

V =			0.4.6
DISTNAME =		rem-${V}
SHARED_LIBS =		rem	0.0
CATEGORIES +=		multimedia devel

WANTLIB = crypto m pthread re ssl z

LIB_DEPENDS =		telephony/baresip/re

MAKE_FLAGS =		LIB_SUFFIX=.so.${LIBrem_VERSION}
MAKE_FLAGS +=		LIBS="-lm -lre"

ALL_TARGET =		librem.a

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/rem
	${INSTALL_DATA} ${WRKBUILD}/include/*.h ${PREFIX}/include/rem
	${INSTALL_DATA} ${WRKBUILD}/librem.a ${PREFIX}/lib
	[ -f ${WRKBUILD}/librem.so.${LIBrem_VERSION} ] && ${INSTALL_DATA} \
		${WRKBUILD}/librem.so.${LIBrem_VERSION} ${PREFIX}/lib

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS} == No
ALL_TARGET +=		librem.so.${LIBrem_VERSION}
.endif
