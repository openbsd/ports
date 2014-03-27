# $OpenBSD: Makefile,v 1.13 2014/03/27 04:00:25 bentley Exp $

COMMENT=	economic and military simulation game

V =		17
DISTNAME= 	widelands-build${V}-src
PKGNAME=	widelands-0.${V}
CATEGORIES=	games
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://widelands.org/

MASTER_SITES =	https://launchpad.net/widelands/build${V}/build-${V}/+download/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS =	devel/boost

WANTLIB +=	GL GLEW SDL SDL_gfx SDL_image SDL_mixer SDL_net SDL_ttf
WANTLIB +=	c m png pthread stdc++ z execinfo ${MODLUA_WANTLIB}

LIB_DEPENDS =	devel/libexecinfo \
		devel/sdl-gfx \
		devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-net \
		devel/sdl-ttf \
		graphics/png \
		graphics/glew

MODULES =	devel/cmake \
		devel/gettext \
		lang/lua \
		lang/python

MODPY_RUNDEP=	No

CONFIGURE_ARGS =	-DWL_INSTALL_DATADIR=share/widelands \
			-DWL_INSTALL_BINDIR=bin

CONFIGURE_ENV =	CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include \
			-I${X11BASE}/include" \
		LDFLAGS="${LDFLAGS} -lexecinfo -lintl -liconv \
			-L${LOCALBASE}/lib"

NO_TEST=	Yes

.include <bsd.port.mk>
