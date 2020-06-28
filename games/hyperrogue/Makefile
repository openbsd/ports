# $OpenBSD: Makefile,v 1.16 2020/06/28 02:37:25 bcallah Exp $

V =		11.3o
COMMENT =	roguelike game in a non-Euclidean world
CATEGORIES =	games x11

GH_ACCOUNT =	zenorogue
GH_PROJECT =	hyperrogue
GH_TAGNAME =	v${V}

HOMEPAGE =	https://roguetemple.com/z/hyper/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW SDL SDL_gfx SDL_mixer SDL_ttf
WANTLIB += c m png z

# C++11
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS =	devel/sdl-gfx \
		devel/sdl-mixer \
		devel/sdl-ttf \
		graphics/glew \
		graphics/png

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib"

MAKE_FLAGS =	CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS} -std=c++11"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

# Correct version number
pre-configure:
	sed -i 's,10.4i,${V},g' ${WRKSRC}/configure.ac

.include <bsd.port.mk>
