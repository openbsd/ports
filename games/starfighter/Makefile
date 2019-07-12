# $OpenBSD: Makefile,v 1.9 2019/07/12 20:46:25 sthen Exp $

COMMENT =		sidescrolling space shmup

V =			1.7
DISTNAME =		starfighter-$V-src
PKGNAME =		starfighter-$V
REVISION =		1

CATEGORIES =		games

HOMEPAGE =		http://starfighter.nongnu.org/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 SDL2_image SDL2_mixer c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=starfighter/$V/}

LIB_DEPENDS =		devel/sdl2-image \
			devel/sdl2-mixer
RUN_DEPENDS =		devel/desktop-file-utils

MAKE_FLAGS =		CXX="${CXX}" \
			CXXFLAGS="${CXXFLAGS} \
			`pkg-config --cflags sdl2 SDL2_image SDL2_mixer`" \
			BINDIR="${PREFIX}/bin/" \
			DATADIR="${PREFIX}/share/starfighter/"
FAKE_FLAGS =		PREFIX=${TRUEPREFIX}

CONFIGURE_STYLE =	gnu

USE_GMAKE =		Yes

NO_TEST =		Yes

post-install:
	chmod ${SHAREMODE} ${PREFIX}/share/starfighter/*/*

.include <bsd.port.mk>
