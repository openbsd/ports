BROKEN =	fifengine doesn't load correctly (cannot import name 'AudioSpaceCoordinate' from 'fife.fife'), probably a fifengine problem

COMMENT =	economic historical real-time strategy game

# upstream moving to godot (https://github.com/unknown-horizons/godot-port/)
# but it's not ready yet (they're looking for help, see repo README)
MODPY_DISTV =	2019.1
GH_ACCOUNT =	unknown-horizons
GH_PROJECT =	unknown-horizons
GH_COMMIT =	e50348da5ed3044957b56525d8e9816b8815d3f1
DISTNAME =	unknown-horizons-${MODPY_DISTV}pl20231221

CATEGORIES =	games

HOMEPAGE =	https://unknown-horizons.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python \
			textproc/intltool

MODPY_ADJ_FILES =	unknown-horizons
MODPY_PYBUILD =		setuptools

PORTHOME =		${WRKDIR}

BUILD_DEPENDS =		devel/gettext,-tools \
			graphics/py-Pillow \
			sysutils/py-distro
RUN_DEPENDS =		devel/desktop-file-utils \
			games/fifengine>=0.4.2p4 \
			textproc/py-yaml
TEST_DEPENDS =		devel/py-greenlet \
			devel/py-mock \
			textproc/py-polib \
			textproc/py-yaml

# didn't catch up with pytest 4.0 changes
# https://github.com/unknown-horizons/unknown-horizons/issues/2938
NO_TEST =		Yes

post-install:
.for i in actionsets.json atlas.sql tilesets.json
	${INSTALL_DATA} ${WRKSRC}/content/$i \
		${PREFIX}/share/unknown-horizons/content/
.endfor
	${INSTALL_DATA} ${WRKSRC}/content/gfx/atlas/* \
		${PREFIX}/share/unknown-horizons/content/gfx/atlas/

.include <bsd.port.mk>
