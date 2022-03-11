COMMENT =	benchmark for OpenGL 2.0 and ES 2.0

GH_ACCOUNT =	glmark2
GH_PROJECT =	glmark2
GH_TAGNAME =	2021.02

CATEGORIES =	benchmarks x11
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 c jpeg m png

# C++14
COMPILER =		base-clang ports-gcc

MODULES =	devel/meson
LIB_DEPENDS =	graphics/jpeg \
		graphics/png

# drm-gl,drm-glesv2 flavors require libudev which we don't have
CONFIGURE_ARGS =	-Dflavors=x11-gl,x11-glesv2 \
			-Dc_args="${CFLAGS} -I${X11BASE}/include" \
			-Dcpp_args="${CXXFLAGS} -I${X11BASE}/include"

NO_TEST =		Yes

.include <bsd.port.mk>
