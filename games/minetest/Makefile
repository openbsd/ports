# $OpenBSD: Makefile,v 1.8 2014/03/23 18:17:34 kili Exp $

COMMENT =	infinite-world block sandbox game
V =		0.4.9
DISTNAME =	minetest-${V}
CATEGORIES =	games x11
REVISION =	1

HOMEPAGE =	http://www.minetest.net/

# source LGPLv2.1/ datas CC BY-SA 3.0
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES=	https://github.com/minetest/

DISTFILES =	minetest-{minetest/archive/}${V}${EXTRACT_SUFX} \
		minetest-game-{minetest_game/archive/}${V}${EXTRACT_SUFX}

MODULES =	devel/cmake \
		devel/gettext
CONFIGURE_ARGS =	-DENABLE_GETTEXT=ON -DCUSTOM_MANDIR=${PREFIX}/man

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS =	audio/openal \
		audio/libogg \
		audio/libvorbis \
		net/curl
BUILD_DEPENDS +=	x11/irrlicht

WANTLIB += GL GLU ICE SM X11 Xext Xxf86vm bz2 c curl jpeg m ogg openal
WANTLIB += png pthread sqlite3 stdc++ vorbis vorbisfile z GLESv2

NO_TEST =	Yes

post-install:
	mv ${WRKDIR}/minetest_game-${V}/ \
	${PREFIX}/share/minetest/games/minetest_game
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/minetest/games/minetest_game

.include <bsd.port.mk>
