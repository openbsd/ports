COMMENT =	economic historical real-time strategy game

MODPY_EGG_VERSION =	2019.1
PKGNAME =		unknown-horizons-${MODPY_EGG_VERSION}
REVISION =	0

GH_ACCOUNT =	unknown-horizons
GH_PROJECT =	unknown-horizons
GH_TAGNAME =	${MODPY_EGG_VERSION}

CATEGORIES =	games

HOMEPAGE =	http://www.unknown-horizons.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python \
			textproc/intltool
MODPY_ADJ_FILES =	unknown-horizons
MODPY_PYTEST =		Yes

SEPARATE_BUILD =	Yes

PORTHOME =		${WRKDIR}

BUILD_DEPENDS =		devel/gettext,-tools \
			graphics/py-Pillow${MODPY_FLAVOR} \
			sysutils/py-distro
RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-future${MODPY_FLAVOR} \
			games/fifengine>=0.4.2 \
			textproc/py-yaml${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-greenlet${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR} \
			textproc/py-polib${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}

#https://github.com/unknown-horizons/unknown-horizons/issues/2938
NO_TEST = 		Yes

post-install:
.for i in actionsets.json atlas.sql tilesets.json
	${INSTALL_DATA} ${WRKSRC}/content/$i \
		${PREFIX}/share/unknown-horizons/content/
.endfor
	${INSTALL_DATA} ${WRKSRC}/content/gfx/atlas/* \
		${PREFIX}/share/unknown-horizons/content/gfx/atlas/

.include <bsd.port.mk>
