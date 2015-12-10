# $OpenBSD: Makefile,v 1.1.1.1 2015/12/10 06:46:36 bentley Exp $

COMMENT =		sidescrolling space shmup

V =			1.4
DISTNAME =		starfighter-$V-src
PKGNAME =		starfighter-$V

CATEGORIES =		games

HOMEPAGE =		http://starfighter.nongnu.org/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2 SDL2_image SDL2_mixer c m pthread stdc++

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=starfighter/$V/}

LIB_DEPENDS =		devel/sdl2-image \
			devel/sdl2-mixer

MAKE_FLAGS =		CXX="${CXX}" \
			CXXFLAGS="${CXXFLAGS} \
			`pkg-config --cflags sdl2 SDL2_image SDL2_mixer`" \
			BINDIR="${PREFIX}/bin/" \
			DATADIR="${PREFIX}/share/starfighter/"
FAKE_FLAGS =		PREFIX=${TRUEPREFIX}

USE_GMAKE =		Yes

NO_TEST =		Yes

post-install:
	chmod ${SHAREMODE} ${PREFIX}/share/starfighter/*/*

.include <bsd.port.mk>
