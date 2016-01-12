# $OpenBSD: Makefile,v 1.3 2016/01/12 09:22:08 czarkoff Exp $

COMMENT =		library for real-time audio and video processing

V =			0.4.7
DISTNAME =		rem-${V}
SHARED_LIBS =		rem	0.1
CATEGORIES +=		multimedia devel

WANTLIB += m re

LIB_DEPENDS =		telephony/baresip/re

MAKE_FLAGS =		LIB_SUFFIX=.so.${LIBrem_VERSION}
MAKE_ENV +=		LIBS="-lm -lre"

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
