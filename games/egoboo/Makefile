# $OpenBSD: Makefile,v 1.4 2013/03/11 11:07:38 espie Exp $

COMMENT =		dungeon-crawling action-RPG adventure

DISTNAME =		egoboo-2.7.4
CATEGORIES =		games

MAINTAINER =		Peter Hessler <phessler@openbsd.org>
HOMEPAGE =		http://egoboo.sourceforge.net
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=egoboo/}

# GPL v3 or later
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		GL GLU SDL c m pthread SDL_net SDL_image SDL_mixer \
			SDL_ttf
LIB_DEPENDS =		devel/sdl-net \
			devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf

USE_GMAKE =		Yes
MAKE_FILE =		Makefile.unix
WRKSRC =		${WRKDIR}/${DISTNAME}/game/
EGOBOO_PREFIX =		${PREFIX}
EGOBOO_SHARED =		${PREFIX}/share/egoboo

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/egoboo.sh
	@perl -pi -e 's,cp -a,cp, -RP,' ${WRKSRC}/egoboo.sh

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/egoboo ${PREFIX}/libexec/
	${INSTALL_SCRIPT} ${WRKSRC}/egoboo.sh ${PREFIX}/bin/egoboo
	${INSTALL_DATA_DIR} ${EGOBOO_SHARED}
	@cd ${WRKDIR}/${DISTNAME} && pax -rw *.* basicdat modules players \
	    ${EGOBOO_SHARED}


.include <bsd.port.mk>
