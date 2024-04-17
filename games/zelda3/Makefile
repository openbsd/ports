COMMENT =	reimplementation of Zelda - A Link to the Past

V =		0.3
PKGNAME =	zelda3-${V:S/-//g}

GH_ACCOUNT =	snesrev
GH_PROJECT =	zelda3
GH_TAGNAME =	v${V}

CATEGORIES =	games

HOMEPAGE =	https://github.com/snesrev/zelda3/

MAINTAINER =	Stefan Sperling <stsp@openbsd.org>

# MIT (requires proprietary assets only at run-time, see zelda3-data port)
PERMIT_PACKAGE =	Yes

WANTLIB =		c m SDL2

LIB_DEPENDS =		devel/sdl2

USE_GMAKE =		Yes
ALL_TARGET =		zelda3

FIX_CRLF_FILES =	src/main.c zelda3.ini

pre-build:
	${SUBST_CMD} ${WRKSRC}/src/main.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zelda3 ${PREFIX}/bin/zelda3
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/zelda3
	${INSTALL_DATA} ${WRKSRC}/zelda3.ini ${PREFIX}/share/examples/zelda3/
	${INSTALL_DATA_DIR} ${PREFIX}/share/zelda3
	
.include <bsd.port.mk>
