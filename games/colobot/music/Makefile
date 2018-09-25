# $OpenBSD: Makefile,v 1.1.1.1 2018/09/25 08:53:05 bentley Exp $

PKG_ARCH =		*

COMMENT =		music files for colobot

DISTNAME =		colobot-music_ogg_$V-alpha
PKGNAME =		colobot-music-$V

MASTER_SITES =		https://colobot.info/files/music/

WRKDIST =		${WRKDIR}

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/colobot/music
	${INSTALL_DATA} ${WRKDIST}/*.ogg ${PREFIX}/share/colobot/music

.include <bsd.port.mk>
