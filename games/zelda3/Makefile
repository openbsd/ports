COMMENT =	reimplementation of Zelda - A Link to the Past

DISTNAME =	zelda3-0.1pre20221101

# use a commit hash, for now; the latest tag (v0.1-beta) is quite outdated
GH_ACCOUNT =	snesrev
GH_PROJECT =	zelda3
GH_COMMIT =	91d771ecc4532e4e40995b133edd9d82a39d61ac

CATEGORIES =	games

HOMEPAGE =	https://github.com/snesrev/zelda3/

MAINTAINER =	Stefan Sperling <stsp@openbsd.org>

# MIT (requires proprietary assets only at run-time, see zelda3-data port)
PERMIT_PACKAGE =	Yes

WANTLIB =		c m SDL2

LIB_DEPENDS =		devel/sdl2

USE_GMAKE =		Yes
ALL_TARGET =		zelda3

pre-build:
	${SUBST_CMD} ${WRKSRC}/main.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zelda3 ${PREFIX}/bin/zelda3
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/zelda3
	${INSTALL_DATA} ${WRKSRC}/zelda3.ini ${PREFIX}/share/examples/zelda3/
	${INSTALL_DATA_DIR} ${PREFIX}/share/zelda3
	
.include <bsd.port.mk>
