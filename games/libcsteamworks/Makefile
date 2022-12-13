COMMENT =	C bindings for Steamworks

V =			1.30
DISTNAME =		csteamworks-${V}
PKGNAME =		libcsteamworks-${V}
GH_ACCOUNT =		rlabrecque
GH_PROJECT =		CSteamworks
GH_TAGNAME =		v1.30-1.40
SHARED_LIBS =		CSteamworks	0.0	# 1.30-1.40
CATEGORIES =		games
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes
WANTLIB += ${COMPILER_LIBCXX} m steam_api
FIX_CRLF_FILES =	src/CSteamworks.h \
			src/steam_api.cpp

# C++
COMPILER =		base-clang ports-gcc base-gcc
LIB_DEPENDS =		games/goldberg_emulator
MAKE_FLAGS =		CXX=${CXX} CXXFLAGS="${CXXFLAGS}"
USE_GMAKE =		Yes
NO_TEST =		Yes
CXXFLAGS +=		-I${LOCALBASE}/include/goldberg_emulator/steam
WRKSRC =		${WRKDIST}/build/linux

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libCSteamworks.so \
		${PREFIX}/lib/libCSteamworks.so.${LIBCSteamworks_VERSION}

.include <bsd.port.mk>
