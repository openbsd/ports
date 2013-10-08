# $OpenBSD: Makefile,v 1.1.1.1 2013/10/08 06:02:08 bentley Exp $

COMMENT =		brick-matching puzzle game

V =			0.9.9
DISTNAME =		wizznic-${V}-src
PKGNAME =		wizznic-${V}

CATEGORIES =		games

HOMEPAGE =		http://dustedgames.blogspot.com/p/wizznic.html

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL SDL SDL_image SDL_mixer c m png pthread z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=wizznic/}
EXTRACT_SUFX =		.tar.bz2

LIB_DEPENDS =		devel/sdl-image \
			devel/sdl-mixer
RUN_DEPENDS =		net/wget

MAKE_FLAGS =		DATADIR=${PREFIX}/share/wizznic/ \
			BINDIR=${PREFIX}/bin \
			CC="${CC}" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			STRIP=true

USE_GMAKE =		Yes

NO_TEST =		Yes

ALL_TARGET =		wizznic

.include <bsd.port.mk>
