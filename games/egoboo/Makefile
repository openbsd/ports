# $OpenBSD: Makefile,v 1.10 2021/03/02 00:23:18 naddy Exp $

COMMENT =		dungeon-crawling action-RPG adventure

DISTNAME =		egoboo-2.7.4
REVISION =		2
CATEGORIES =		games

HOMEPAGE =		http://egoboo.sourceforge.net
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=egoboo/}

# GPL v3 or later
PERMIT_PACKAGE =	Yes

WANTLIB = 		GL GLU SDL c m pthread SDL_net SDL_image SDL_mixer \
			SDL_ttf
LIB_DEPENDS =		devel/sdl-net \
			devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf

FIX_CRLF_FILES =	game/Makefile.unix game/egoboo_setup.h \
			game/file_linux.c game/graphic.c
USE_GMAKE =		Yes
MAKE_FILE =		Makefile.unix
WRKSRC =		${WRKDIST}/game
EGOBOO_PREFIX =		${PREFIX}
EGOBOO_SHARED =		${PREFIX}/share/egoboo

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/egoboo.sh

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/egoboo ${PREFIX}/libexec/
	${INSTALL_SCRIPT} ${WRKSRC}/egoboo.sh ${PREFIX}/bin/egoboo
	${INSTALL_DATA_DIR} ${EGOBOO_SHARED}
	@cd ${WRKDIST} && pax -rw *.* basicdat modules players \
	    ${EGOBOO_SHARED}

.include <bsd.port.mk>
