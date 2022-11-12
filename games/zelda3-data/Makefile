COMMENT =	game data files for zelda3

DISTNAME =	zelda3-0.1pre20221101
PKGNAME =	zelda3-data-0.1pre20221101
# GH_DISTFILE contains curly braces { } which won't work here
ZELDA3_DISTFILE = ${DISTNAME}-${GH_COMMIT:C/(........).*/\1/}${EXTRACT_SUFX}
DISTFILES =	zelda3.sfc ${ZELDA3_DISTFILE}

# use a commit hash, for now; the latest tag (v0.1-beta) is quite outdated
GH_ACCOUNT =	snesrev
GH_PROJECT =	zelda3
GH_COMMIT =	91d771ecc4532e4e40995b133edd9d82a39d61ac

CATEGORIES =	games

HOMEPAGE =	https://www.nintendo.com

# Python is required to extract game assets from zelda3.sfc
MODULES=	lang/python
MODPY_VERSION = ${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP =  No

USE_GMAKE =	Yes

BUILD_DEPENDS =		graphics/py-Pillow \
			textproc/py-yaml,python3

FETCH_MANUALLY += "zelda3.sfc has sha256 checksum"
FETCH_MANUALLY += "66871d66be19ad2c34c927d6b14cd8eb6fc3181965b6e517cb361f7316009cfb"
FETCH_MANUALLY += "and must be placed into ${DISTDIR}."
FETCH_MANUALLY += "It can be extracted from a retail SNES cartridge using"
FETCH_MANUALLY += "tools such as https://github.com/sanni/cartreader"

PERMIT_PACKAGE =	proprietary ROM image
PERMIT_DISTFILES =	${PERMIT_PACKAGE}

# do not attempt to extract zelda3.sfc
EXTRACT_CASES =		*.sfc) ;;

CONFIGURE_STYLE =	none
# the game program is compiled by games/zelda3; we just build the assets
ALL_TARGET =		tables/zelda3_assets.dat

pre-build:
	${INSTALL_DATA} ${DISTDIR}/zelda3.sfc ${WRKSRC}/tables/zelda3.sfc

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/zelda3
	${INSTALL_DATA} ${WRKSRC}/tables/zelda3_assets.dat \
		${PREFIX}/share/zelda3/zelda3_assets.dat

.include <bsd.port.mk>
