COMMENT =		flexible keyboardless emulator frontend

GH_ACCOUNT =		Aloshi
GH_PROJECT =		EmulationStation
GH_COMMIT =		646bede3d9ec0acf0ae378415edac136774a66c5

DISTNAME =		emulationstation-2.0.1a
REVISION =		7

CATEGORIES =		emulators

HOMEPAGE =		http://www.emulationstation.org/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU SDL2 boost_atomic-mt boost_charconv-mt
WANTLIB += boost_chrono-mt boost_container-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_locale-mt boost_thread-mt
WANTLIB += c curl freeimage freetype m

MODULES =		devel/cmake

COMPILER =		base-clang ports-gcc

CXXFLAGS +=	-std=c++11 -Wno-inconsistent-missing-override

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

BUILD_DEPENDS =		math/eigen3
LIB_DEPENDS =		devel/boost \
			devel/sdl2 \
			graphics/freeimage \
			net/curl

NO_TEST =		Yes

.include <bsd.port.mk>
