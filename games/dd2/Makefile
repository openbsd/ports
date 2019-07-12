# $OpenBSD: Makefile,v 1.4 2019/07/12 20:46:16 sthen Exp $

COMMENT =		arcade game for one or two players

V =			0.2.2
REVISION =		1
DISTNAME =		dd2-${V}

CATEGORIES =		games

HOMEPAGE =		http://www.usebox.net/jjm/dd2

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		SDL SDL_mixer c m pthread

MASTER_SITES =		http://www.usebox.net/jjm/dd2/releases/

# SDL and SDL_Mixer
LIB_DEPENDS =		devel/sdl-mixer

CONFIGURE_STYLE =	gnu

CFLAGS +=		-DDD2_SCORE=\\\"${VARBASE}/games\\\"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dd2
	${INSTALL_DATA} ${WRKSRC}/src/data/dd2-hiscore \
		${PREFIX}/share/examples/dd2

.include <bsd.port.mk>
