# $OpenBSD: Makefile,v 1.1.1.1 2015/11/21 00:00:18 bentley Exp $

COMMENT =		flexible keyboardless emulator frontend

DISTNAME =		emulationstation-2.0.1a

CATEGORIES =		emulators

HOMEPAGE =		http://www.emulationstation.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU SDL2 boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_locale-mt boost_system-mt c curl freeimage freetype
WANTLIB += m pthread

GH_ACCOUNT =		Aloshi
GH_PROJECT =		EmulationStation
GH_COMMIT =		646bede3d9ec0acf0ae378415edac136774a66c5

MODULES =		devel/cmake \
			gcc4
MODGCC4_LANGS =		c c++
MODGCC4_ARCHS =		*
BUILD_DEPENDS =		math/eigen3
LIB_DEPENDS =		devel/boost \
			devel/sdl2 \
			graphics/freeimage \
			net/curl

NO_TEST =		Yes

.include <bsd.port.mk>
