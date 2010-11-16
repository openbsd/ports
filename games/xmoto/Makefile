# $OpenBSD: Makefile,v 1.7 2010/11/16 11:23:29 espie Exp $

COMMENT =	challenging 2D motocross platform game

V =	 	0.5.2
DISTNAME =	xmoto-${V}-src
PKGNAME =	xmoto-${V}
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
WANTLIB += SDL_mixer SDL_net SDL_ttf bz2 curl jpeg ode lua png sqlite3

MODULES=	devel/gettext

LIB_DEPENDS =	devel/sdl-mixer \
		devel/sdl-net \
		devel/sdl-ttf \
		archivers/bzip2 \
		net/curl \
		graphics/jpeg \
		devel/ode \
		lang/lua \
		graphics/png \
		databases/sqlite3

USE_GMAKE =		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			LIBS="-lGL -lm -pthread"

WRKDIST =		${WRKDIR}/${DISTNAME:S/-src//}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmoto/
	${INSTALL_DATA} ${WRKSRC}/{COPYING,README} ${PREFIX}/share/doc/xmoto/

.include <bsd.port.mk>
