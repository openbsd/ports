COMMENT =		dungeon-crawling action-RPG adventure

DISTNAME =		egoboo-2.8.1
REVISION =		0
CATEGORIES =		games

HOMEPAGE =		http://egoboo.sourceforge.net
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=egoboo/}

# GPL v3 or later
PERMIT_PACKAGE =	Yes

WANTLIB = 		GL GLU SDL c m physfs pthread SDL_image SDL_mixer \
			SDL_ttf
LIB_DEPENDS =		devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf \
			devel/physfs

FIX_CRLF_FILES =	src/Makefile src/enet/Makefile src/game/Makefile \
			src/game/extensions/ogl_texture.c \
			src/game/game.c \
			src/game/platform/file_linux.c \
			src/game/md2.c

USE_GMAKE =		Yes
WRKSRC =		${WRKDIST}/src
MAKE_FLAGS =		PREFIX=${PREFIX} SYSCONFDIR=${SYSCONFDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/game/egoboo ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/egoboo
	@cd ${WRKDIST} && pax -rw basicdat modules ${PREFIX}/share/egoboo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/egoboo
	${INSTALL_DATA} ${WRKDIST}/setup.txt ${WRKDIST}/controls.txt \
	    ${PREFIX}/share/examples/egoboo

.include <bsd.port.mk>
