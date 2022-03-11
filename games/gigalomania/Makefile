COMMENT =	open source 2D real time strategy god game
DISTNAME =	gigalomania-1.0.1
CATEGORIES =	games x11

HOMEPAGE =	http://gigalomania.sourceforge.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_image SDL2_mixer c m

MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

FIX_CRLF_FILES =	stdafx.h

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	devel/sdl2-image \
		devel/sdl2-mixer

RUN_DEPENDS =	devel/desktop-file-utils

MAKE_FLAGS =	CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS} -DDATADIR='\"${LOCALBASE}/share/gigalomania\"'"

NO_TEST =	Yes

do-gen:
	sed -i 's,$${TRUEPREFIX},${TRUEPREFIX},g' \
		${WRKSRC}/gigalomania.desktop

.include <bsd.port.mk>
