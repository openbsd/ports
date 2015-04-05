# $OpenBSD: Makefile,v 1.12 2015/04/05 21:06:23 landry Exp $

COMMENT =	infinite-world block sandbox game
V =		0.4.12
DISTNAME =	minetest-${V}
CATEGORIES =	games x11

HOMEPAGE =	http://www.minetest.net/

# source LGPLv2.1/ datas CC BY-SA 3.0
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES=	https://github.com/minetest/

DISTFILES =	minetest-{minetest/archive/}${V}${EXTRACT_SUFX} \
		minetest-game-{minetest_game/archive/}${V}${EXTRACT_SUFX}

MODULES =	devel/cmake \
		devel/gettext
CONFIGURE_ARGS =	-DENABLE_GETTEXT=ON -DCUSTOM_MANDIR=${PREFIX}/man
CONFIGURE_ENV +=	CXXFLAGS="-I${X11BASE}/include"

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS =	audio/openal \
		audio/libogg \
		audio/libvorbis \
		x11/irrlicht \
		net/curl

WANTLIB += GL GLU ICE Irrlicht SM X11 Xext Xxf86vm bz2 c curl jpeg m ogg openal
WANTLIB += png pthread sqlite3 stdc++ vorbis vorbisfile z

NO_TEST =	Yes

post-install:
	mv ${WRKDIR}/minetest_game-${V}/ \
	${PREFIX}/share/minetest/games/minetest_game
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/minetest/games/minetest_game

.include <bsd.port.mk>
