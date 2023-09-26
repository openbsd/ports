V =		0.60pl20220929
COMMENT =	source port of Descent, a 6-degrees-of-freedom shooter
DISTNAME =	dxx-rebirth_${V:S/0.60pl//g}-src
PKGNAME =	dxx-rebirth-${V}
REVISION =	0
CATEGORIES =	games x11

HOMEPAGE =	https://www.dxx-rebirth.com/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv3 with special exception for Parallax license
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU SDL SDL_image SDL_mixer c m physfs png z

SITES =		https://www.dxx-rebirth.com/download/dxx/rebirth/
EXTRACT_SUFX =	.tar.xz

# requires -std=gnu++20
COMPILER =	base-clang

MODULES =	devel/scons
MODSCONS_ENV =	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL -I${X11BASE}/include" \
		CXXFLAGS="${CXXFLAGS}" \
		LINKFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
MODSCONS_FLAGS =	ignore_unknown_variables=1 verbosebuild=1 \
			show_tool_version=false

BUILD_DEPENDS =	devel/boost,-main
LIB_DEPENDS =	devel/physfs \
		devel/sdl-image \
		devel/sdl-mixer \
		graphics/png

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/build/d1x-rebirth/d1x-rebirth ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKBUILD}/build/d2x-rebirth/d2x-rebirth ${PREFIX}/bin/

.include <bsd.port.mk>
