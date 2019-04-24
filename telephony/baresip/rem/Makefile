# $OpenBSD: Makefile,v 1.10 2019/04/24 16:26:57 sthen Exp $

COMMENT =		library for real-time audio and video processing

V =			0.5.3
DISTNAME =		rem-${V}
SHARED_LIBS =		rem	0.4
CATEGORIES +=		multimedia devel
REVISION =		0

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
