COMMENT =	Steam API wrapper for Hashlink

DISTNAME =	hlsteam-1.0pl1
GH_ACCOUNT =	HeapsIO
GH_PROJECT =	hlsteam
# checkout from 2022-03-22
GH_COMMIT =	f774d8ea2b7255a3067254fde8d18063455dec24
REVISION =	1
CATEGORIES =	games
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} hl m steam_api

FIX_CRLF_FILES =	Makefile native/common.cpp native/gameserver.cpp

COMPILER =		base-clang ports-gcc
LIB_DEPENDS =		games/goldberg_emulator \
			lang/hashlink
USE_GMAKE =		Yes
NO_TEST =		Yes

MAKE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CXX="${CXX}"
CFLAGS +=		-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/goldberg_emulator \
			-I${LOCALBASE}/include/hl

do-install:
	${INSTALL_DATA} ${WRKSRC}/steam.hdll ${PREFIX}/lib/

.include <bsd.port.mk>
