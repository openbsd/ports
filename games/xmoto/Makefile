# $OpenBSD: Makefile,v 1.2 2009/08/10 06:31:43 kili Exp $

COMMENT =	challenging 2D motocross platform game

V =	 	0.5.1
DISTNAME =	xmoto-${V}-src
PKGNAME =	xmoto-${V}p0
CATEGORIES =	games

MAINTAINER =	Jonathan Armani <dbd@asystant.net>
HOMEPAGE =	http://xmoto.tuxfamily.org/

MASTER_SITES =	http://download.tuxfamily.org/xmoto/xmoto/${V}/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL GLU SDL X11 c m pthread pthread-stubs stdc++ xcb z

MODULES=	devel/gettext

LIB_DEPENDS =	SDL_mixer::devel/sdl-mixer \
		SDL_net::devel/sdl-net \
		SDL_ttf::devel/sdl-ttf \
		bz2::archivers/bzip2 \
		curl::net/curl \
		jpeg::graphics/jpeg \
		ode::devel/ode \
		lua::lang/lua \
		png::graphics/png \
		sqlite3::databases/sqlite3

USE_X11 =		Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			LIBS="-lGL -lm -pthread"

WRKDIST =		${WRKDIR}/${DISTNAME:S/-src//}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmoto/
	${INSTALL_DATA} ${WRKSRC}/{COPYING,README} ${PREFIX}/share/doc/xmoto/

.include <bsd.port.mk>
