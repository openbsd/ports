# $OpenBSD: Makefile,v 1.8 2019/07/12 20:46:08 sthen Exp $

COMMENT =		flexible keyboardless emulator frontend

DISTNAME =		emulationstation-2.0.1a

CATEGORIES =		emulators

HOMEPAGE =		http://www.emulationstation.org/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += GL GLU SDL2 boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_locale-mt boost_system-mt c curl freeimage freetype
WANTLIB += m pthread ${COMPILER_LIBCXX}

GH_ACCOUNT =		Aloshi
GH_PROJECT =		EmulationStation
GH_COMMIT =		646bede3d9ec0acf0ae378415edac136774a66c5
REVISION =		1

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc

CXXFLAGS +=	-std=c++11 -Wno-inconsistent-missing-override

BUILD_DEPENDS =		math/eigen3
LIB_DEPENDS =		devel/boost \
			devel/sdl2 \
			graphics/freeimage \
			net/curl

NO_TEST =		Yes

.include <bsd.port.mk>
