COMMENT =	zelda3 ROM image

DISTNAME =	zelda3-rom-0.0

DISTFILES =	zelda3.sfc

CATEGORIES =	games

HOMEPAGE =	https://www.nintendo.com

FETCH_MANUALLY += "zelda3.sfc has sha256 checksum"
FETCH_MANUALLY += "66871d66be19ad2c34c927d6b14cd8eb6fc3181965b6e517cb361f7316009cfb"
FETCH_MANUALLY += "and must be placed into ${DISTDIR}."
FETCH_MANUALLY += "It can be extracted from a retail SNES cartridge using"
FETCH_MANUALLY += "tools such as https://github.com/sanni/cartreader"

PERMIT_PACKAGE =	proprietary ROM image
PERMIT_DISTFILES =	${PERMIT_PACKAGE}

EXTRACT_ONLY =

WRKDIST = ${WRKDIR}

NO_BUILD = Yes
NO_TEST = Yes

post-extract:
	ln -sf ${DISTDIR}/zelda3.sfc ${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/zelda3
	${INSTALL_DATA} ${WRKDIR}/zelda3.sfc ${PREFIX}/share/zelda3/zelda3.sfc

.include <bsd.port.mk>
