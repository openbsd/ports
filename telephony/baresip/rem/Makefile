# $OpenBSD: Makefile,v 1.8 2017/10/30 17:22:21 feinerer Exp $

COMMENT =		library for real-time audio and video processing

V =			0.5.2
DISTNAME =		rem-${V}
SHARED_LIBS =		rem	0.4
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
	${INSTALL_DATA} ${WRKBUILD}/librem.so.${LIBrem_VERSION} ${PREFIX}/lib

.include <bsd.port.mk>
