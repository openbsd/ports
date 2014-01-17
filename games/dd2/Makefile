# $OpenBSD: Makefile,v 1.2 2014/01/17 19:46:21 juanfra Exp $

COMMENT =		arcade game for one or two players

V =			0.2.2
REVISION =		0
DISTNAME =		dd2-${V}

CATEGORIES =		games

HOMEPAGE =		http://www.usebox.net/jjm/dd2

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

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
