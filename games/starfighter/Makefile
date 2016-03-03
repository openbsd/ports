# $OpenBSD: Makefile,v 1.2 2016/03/03 03:04:34 bentley Exp $

COMMENT =		sidescrolling space shmup

V =			1.5.1.1
DISTNAME =		starfighter-$V-src
PKGNAME =		starfighter-$V

CATEGORIES =		games

HOMEPAGE =		http://starfighter.nongnu.org/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2 SDL2_image SDL2_mixer c m pthread stdc++

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=starfighter/1.5/}

LIB_DEPENDS =		devel/sdl2-image \
			devel/sdl2-mixer
RUN_DEPENDS =		devel/desktop-file-utils

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
