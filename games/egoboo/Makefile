# $OpenBSD: Makefile,v 1.1.1.1 2009/10/11 14:01:39 phessler Exp $

COMMENT =		dungeon-crawling action-RPG adventure

DISTNAME =		egoboo-2.7.4
CATEGORIES =		games

MAINTAINER =		Peter Hessler <phessler@openbsd.org>
HOMEPAGE =		http://egoboo.sourceforge.net
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=egoboo/}

# GPL v3 or later
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = 		GL GLU SDL c m pthread
LIB_DEPENDS =		SDL_net::devel/sdl-net \
			SDL_image::devel/sdl-image \
			SDL_mixer::devel/sdl-mixer \
			SDL_ttf::devel/sdl-ttf

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
