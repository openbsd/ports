# $OpenBSD: Makefile,v 1.3 2010/10/24 21:19:02 ajacoutot Exp $

COMMENT =		overhead shooting game

V = 			1.30
DISTNAME =		orbital_eunuchs_sniper-${V}
PKGNAME = 		snipe2d-${V}p0

CATEGORIES =		games

HOMEPAGE =		http://icculus.org/oes/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# zlib-a-like - see COPYING in sources
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		SDL c m pthread stdc++

MASTER_SITES =		http://icculus.org/oes/

LIB_DEPENDS =		SDL_image.>=2::devel/sdl-image \
			SDL_mixer.>=3::devel/sdl-mixer


CONFIGURE_STYLE =	gnu

CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib \
			-pthread" CPPFLAGS=-I${LOCALBASE}/include

post-extract:
			rm ${WRKDIST}/Makefile.orig

.include <bsd.port.mk>
