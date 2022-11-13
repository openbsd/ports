COMMENT =	additional sprites for zelda3

# there is no released version, we make up ourn own based on zelda3 port
DISTNAME =	zelda3-sprites-0.1pre20221101

GH_ACCOUNT =	snesrev
GH_PROJECT =	sprites-gfx
GH_COMMIT =	514145aa40d087ae265b3a4380345649e7ff3f44

CATEGORIES =	games

HOMEPAGE =	https://snesrev.github.io/sprites-gfx/snes/zelda3/link/

PERMIT_PACKAGE =	no license
PERMIT_DISTFILES =	${PERMIT_PACKAGE}

NO_BUILD =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/zelda3/sprites
	${INSTALL_DATA} ${WRKSRC}/snes/zelda3/link/sheets/*zspr \
		${PREFIX}/share/zelda3/sprites
	
.include <bsd.port.mk>
