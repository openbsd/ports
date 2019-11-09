# $OpenBSD: Makefile,v 1.13 2019/11/09 16:38:54 bcallah Exp $

V =		11.2d
COMMENT =	roguelike game in a non-Euclidean world
PKGNAME =	${GH_PROJECT}-${V}
CATEGORIES =	games x11

GH_ACCOUNT =	zenorogue
GH_PROJECT =	hyperrogue
GH_TAGNAME =	v${V:S/.//}

HOMEPAGE =	http://roguetemple.com/z/hyper/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW SDL SDL_gfx SDL_mixer SDL_ttf
WANTLIB += c m png

# C++11
COMPILER =	base-clang ports-gcc

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
AUTOMAKE_VERSION =	1.16

# Correct version number
# autoreconf taken from games/manaplus
pre-configure:
	sed -i 's,10.4i,${V},g' ${WRKSRC}/configure.ac
	cd ${WRKSRC} && \
		${SETENV} AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf -i

.include <bsd.port.mk>
