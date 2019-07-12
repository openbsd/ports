# $OpenBSD: Makefile,v 1.11 2019/07/12 20:46:24 sthen Exp $

COMMENT =		overhead shooting game

V = 			1.30
DISTNAME =		orbital_eunuchs_sniper-${V}
PKGNAME = 		snipe2d-${V}
REVISION =		2

CATEGORIES =		games

HOMEPAGE =		http://icculus.org/oes/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# zlib-a-like - see COPYING in sources
PERMIT_PACKAGE =	Yes

WANTLIB +=		SDL c m pthread ${COMPILER_LIBCXX} SDL_image>=2 SDL_mixer>=3

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		http://icculus.org/oes/

LIB_DEPENDS =		devel/sdl-image \
			devel/sdl-mixer


CONFIGURE_STYLE =	gnu

CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib \
			-pthread" CPPFLAGS=-I${LOCALBASE}/include

post-extract:
			rm ${WRKDIST}/Makefile.orig

.include <bsd.port.mk>
