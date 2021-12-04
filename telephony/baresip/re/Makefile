# $OpenBSD: Makefile,v 1.23 2021/12/04 21:30:04 tb Exp $

COMMENT =		portable library for real-time communications

GH_ACCOUNT =	baresip
GH_PROJECT =	re
GH_TAGNAME =	v2.0.1
REVISION =	0

SHARED_LIBS =		re	6.0
CATEGORIES +=		devel

WANTLIB = crypto pthread ssl z

MAKE_ENV +=		LIB_SUFFIX=.so.${LIBre_VERSION}
MAKE_ENV +=		LIBS="-lssl -lcrypto -lz -lpthread"

ALL_TARGET =		libre.a libre.so.${LIBre_VERSION}

NO_TEST =		yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/re
	${INSTALL_DATA} ${WRKBUILD}/include/*.h ${PREFIX}/include/re
	${INSTALL_DATA} ${WRKBUILD}/libre.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKBUILD}/libre.so.${LIBre_VERSION} ${PREFIX}/lib

.include <bsd.port.mk>
