# $OpenBSD: Makefile,v 1.24 2019/07/12 21:02:20 sthen Exp $

COMMENT=	jezzball-style, penguin puzzle game

DISTNAME=	icebreaker-1.2.1
REVISION =	3
CATEGORIES=	games
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.mattdm.org/icebreaker/

MASTER_SITES=	${HOMEPAGE}1.2.x/

PERMIT_PACKAGE=	Yes
WANTLIB=		SDL X11 Xext c m pthread usbhid xcb \
			SDL_mixer smpeg>=1.3

LIB_DEPENDS=	devel/sdl-mixer \
		devel/smpeg

USE_GMAKE=	Yes
NO_TEST=	Yes
MAKE_ENV=	prefix="${PREFIX}" \
		highscoredir="/var/games/icebreaker"
MAKE_FLAGS=	CC="${CC}"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/icebreaker
	${INSTALL_DATA} ${WRKSRC}/*.{wav,bmp} ${PREFIX}/share/icebreaker
	${INSTALL_PROGRAM} -g games -m 2755 ${WRKSRC}/icebreaker ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/icebreaker.6 ${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/icebreaker
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/icebreaker/icebreaker.scores

.include <bsd.port.mk>
