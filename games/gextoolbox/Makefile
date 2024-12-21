COMMENT =	tools for extracting ROMS from games

MODPY_DISTV =	0.1.7

DISTNAME =		game-extraction-toolbox-${MODPY_DISTV}
PKGNAME =		gextoolbox-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		games sysutils

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		archivers/py-lz4 \
			devel/py-bitarray \
			devel/py-click \
			devel/py-click-log \
			devel/py-magic \
			devel/py-rich \
			games/py-unitypy \
			graphics/py-Pillow \
			sysutils/py-fsspec \
			sysutils/py-psutil \
			textproc/py-texttable

.include <bsd.port.mk>
