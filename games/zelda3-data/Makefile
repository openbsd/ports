COMMENT =	game data files for zelda3

DISTNAME =	zelda3-0.1pre20221101
PKGNAME =	zelda3-data-0.1pre20221101
REVISION = 	0

# use a commit hash, for now; the latest tag (v0.1-beta) is quite outdated
GH_ACCOUNT =	snesrev
GH_PROJECT =	zelda3
GH_COMMIT =	91d771ecc4532e4e40995b133edd9d82a39d61ac

CATEGORIES =	games

HOMEPAGE =	https://www.nintendo.com

# Python is required to extract game assets from zelda3.sfc
MODULES=	lang/python
MODPY_RUNDEP =  No

USE_GMAKE =	Yes

BUILD_DEPENDS =	graphics/py-Pillow${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		games/zelda3-rom:patch

PERMIT_PACKAGE =	proprietary ROM image
PERMIT_DISTFILES =	${PERMIT_PACKAGE}

CONFIGURE_STYLE =	none
# the game program is compiled by games/zelda3; we just build the assets
ALL_TARGET =		tables/zelda3_assets.dat

pre-build:
	ln -sf ${WRKDIR}/games/zelda3-rom/zelda3.sfc ${WRKSRC}/tables/zelda3.sfc

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/zelda3
	${INSTALL_DATA} ${WRKSRC}/tables/zelda3_assets.dat \
		${PREFIX}/share/zelda3/zelda3_assets.dat

.include <bsd.port.mk>
