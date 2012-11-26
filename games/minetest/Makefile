# $OpenBSD: Makefile,v 1.2 2012/11/26 16:03:31 sthen Exp $

COMMENT =	infinite-world block sandbox game
DISTNAME =	minetest-0.4.3
CATEGORIES =	games x11

HOMEPAGE =	http://www.minetest.net/

# source LGPLv2.1/ datas CC BY-SA 3.0
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		minetest-game-0.4.3${EXTRACT_SUFX}

#https://github.com/celeron55/minetest_game/tarball/0.4.1
#https://github.com/celeron55/minetest/tarball/0.4.1
MASTER_SITES =	http://spacehopper.org/mirrors/

MODULES =	devel/cmake \
		devel/gettext
CONFIGURE_ARGS =	-DENABLE_GETTEXT=ON -DCUSTOM_MANDIR=${PREFIX}/man

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS =	audio/openal \
		audio/libogg \
		audio/libvorbis
BUILD_DEPENDS +=	x11/irrlicht

WANTLIB += GL GLU ICE SM X11 Xext Xxf86vm bz2 c jpeg m ogg openal
WANTLIB += png pthread sqlite3 stdc++ vorbis vorbisfile z

post-install:
	mv ${WRKDIR}/minetest_game-0.4.3/ \
	${PREFIX}/share/minetest/games/minetest_game
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/minetest/games/minetest_game

.include <bsd.port.mk>
