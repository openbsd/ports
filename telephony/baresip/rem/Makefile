# $OpenBSD: Makefile,v 1.4 2016/03/10 20:15:07 naddy Exp $

COMMENT =		library for real-time audio and video processing

V =			0.4.7
DISTNAME =		rem-${V}
SHARED_LIBS =		rem	0.1
CATEGORIES +=		multimedia devel

WANTLIB += m re

LIB_DEPENDS =		telephony/baresip/re

MAKE_FLAGS =		LIB_SUFFIX=.so.${LIBrem_VERSION}
MAKE_ENV +=		LIBS="-lm -lre"

ALL_TARGET =		librem.a librem.so.${LIBrem_VERSION}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/rem
	${INSTALL_DATA} ${WRKBUILD}/include/*.h ${PREFIX}/include/rem
	${INSTALL_DATA} ${WRKBUILD}/librem.a ${PREFIX}/lib
	[ -f ${WRKBUILD}/librem.so.${LIBrem_VERSION} ] && ${INSTALL_DATA} \
		${WRKBUILD}/librem.so.${LIBrem_VERSION} ${PREFIX}/lib

.include <bsd.port.mk>
