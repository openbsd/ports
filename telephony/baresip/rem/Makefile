COMMENT =		library for real-time audio and video processing

GH_ACCOUNT =	baresip
GH_PROJECT =	rem
GH_TAGNAME =	v1.0.0
SHARED_LIBS =		rem	1.0
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
