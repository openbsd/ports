# $OpenBSD: Makefile,v 1.4 2018/07/05 20:24:45 bcallah Exp $

COMMENT =	roguelike game in a non-Euclidean world
CATEGORIES =	games x11

GH_ACCOUNT =	zenorogue
GH_PROJECT =	hyperrogue
GH_TAGNAME =	v10.4j

HOMEPAGE =	http://roguetemple.com/z/hyper/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW SDL SDL_gfx SDL_mixer SDL_ttf
WANTLIB += c m png

# C++11
COMPILER =	base-clang ports-clang ports-gcc

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS =	devel/sdl-gfx \
		devel/sdl-mixer \
		devel/sdl-ttf \
		graphics/glew \
		graphics/png

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib"

MAKE_FLAGS =	CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS} -std=c++11"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

# Disable hardcoded optimizations
# Correct version number
# autoreconf taken from games/manaplus
pre-configure:
	sed -i -e 's,-O0,,g' ${WRKSRC}/Makefile.am
	sed -i 's,10.4b,10.4j,g' ${WRKSRC}/configure.ac
	cd ${WRKSRC} && \
		${SETENV} AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf -i

.include <bsd.port.mk>
