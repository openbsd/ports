# $OpenBSD: Makefile,v 1.10 2018/06/27 21:03:44 espie Exp $

BROKEN-alpha =		OOM on src/hqx/hq4x.cpp

COMMENT =		racing game with randomized tracks

DISTNAME =		brumbrumrally-0.7
REVISION =		2
FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES =		games

HOMEPAGE =		http://dataapa.net/brumbrumrally/
MAINTAINER =		Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL SDL_image SDL_net c m pthread ${COMPILER_LIBCXX}

MASTER_SITES =		http://dataapa.net/brumbrumrally/files/

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		devel/sdl-image \
			devel/sdl-net

MAKE_FLAGS =		CXX="${CXX}" \
			CXXFLAGS="${CXXFLAGS} `sdl-config --cflags`"

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
