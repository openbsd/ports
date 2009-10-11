# $OpenBSD: Makefile,v 1.1.1.1 2009/10/11 21:50:14 edd Exp $

COMMENT =		overhead shooting game

V = 			1.30
DISTNAME =		orbital_eunuchs_sniper-${V}
PKGNAME = 		snipe2d-${V}

CATEGORIES =		games

HOMEPAGE =		http://icculus.org/oes/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# zlib-a-like - see COPYING in sources
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c m pthread stdc++

MASTER_SITES =		http://icculus.org/oes/

LIB_DEPENDS =		SDL.>=8::devel/sdl \
			SDL_image.>=2::devel/sdl-image \
			SDL_mixer.>=3::devel/sdl-mixer

USE_X11 =		Yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib \
			-pthread" CPPFLAGS=-I${LOCALBASE}/include

post-extract:
			rm ${WRKDIST}/Makefile.orig

.include <bsd.port.mk>
