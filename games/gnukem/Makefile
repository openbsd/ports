V =		1.0.3
COMMENT =	open source retro-style 2D scrolling platform shooter game
DISTFILES =	davegnukem_${V}.orig.tar.xz \
		davegnukem_${V}.orig-data.tar.xz
PKGNAME =	gnukem-${V}
CATEGORIES =	games x11

HOMEPAGE =	https://djoffe.com/gnukem/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Dual licensed: MIT or GPLv2 only
# Data assets: CC-BY-3.0, CC0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_mixer c m

SITES =	https://github.com/davidjoffe/dave_gnukem/releases/download/${V}/

# C++14
COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	devel/sdl2-mixer

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CC}" CXX="${CXX}" \
		FLAGS="${CXXFLAGS}"

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/dave_gnukem-${V}

post-extract:
	mv ${WRKDIR}/gnukem_data-${V} ${WRKDIST}/data

.include <bsd.port.mk>
