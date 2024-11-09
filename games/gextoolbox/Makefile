COMMENT =	tools for extracting ROMS from games

MODPY_EGG_VERSION =	0.1.7

DISTNAME =		game-extraction-toolbox-${MODPY_EGG_VERSION}
PKGNAME =		gextoolbox-${MODPY_EGG_VERSION}

CATEGORIES =		games sysutils

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		archivers/py-lz4${MODPY_FLAVOR} \
			devel/py-bitarray${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR} \
			devel/py-click-log${MODPY_FLAVOR} \
			devel/py-magic${MODPY_FLAVOR} \
			devel/py-rich${MODPY_FLAVOR} \
			games/py-unitypy${MODPY_FLAVOR} \
			graphics/py-Pillow${MODPY_FLAVOR} \
			sysutils/py-fsspec${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			textproc/py-texttable${MODPY_FLAVOR}

.include <bsd.port.mk>
