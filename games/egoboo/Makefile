# $OpenBSD: Makefile,v 1.8 2019/07/12 20:46:16 sthen Exp $

COMMENT =		dungeon-crawling action-RPG adventure

DISTNAME =		egoboo-2.7.4
REVISION =		1
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

USE_GMAKE =		Yes
MAKE_FILE =		Makefile.unix
WRKSRC =		${WRKDIR}/${DISTNAME}/game
EGOBOO_PREFIX =		${PREFIX}
EGOBOO_SHARED =		${PREFIX}/share/egoboo

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/egoboo.sh

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/egoboo ${PREFIX}/libexec/
	${INSTALL_SCRIPT} ${WRKSRC}/egoboo.sh ${PREFIX}/bin/egoboo
	${INSTALL_DATA_DIR} ${EGOBOO_SHARED}
	@cd ${WRKDIR}/${DISTNAME} && pax -rw *.* basicdat modules players \
	    ${EGOBOO_SHARED}


.include <bsd.port.mk>
