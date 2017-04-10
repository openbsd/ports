# $OpenBSD: Makefile,v 1.4 2017/04/10 11:45:28 sthen Exp $

BROKEN-alpha =		OOM on src/hqx/hq4x.cpp

COMMENT =		racing game with randomized tracks

DISTNAME =		brumbrumrally-0.6

CATEGORIES =		games

HOMEPAGE =		http://dataapa.net/brumbrumrally/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL SDL_image SDL_net c m pthread ${LIBCXX}

MASTER_SITES =		http://dataapa.net/brumbrumrally/files/

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		devel/sdl-image \
			devel/sdl-net

MAKE_FLAGS =		CXX="${CXX}" \
			CXXFLAGS="${CXXFLAGS} `sdl-config --cflags`"

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
