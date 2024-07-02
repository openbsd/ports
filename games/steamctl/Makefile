COMMENT =		take control of Steam from your terminal

MODPY_EGG_VERSION =	0.9.5
DISTNAME =		steamctl-${MODPY_EGG_VERSION}
CATEGORIES =		games
HOMEPAGE =		https://github.com/ValvePython/steamctl
REVISION =		1

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-appdirs${MODPY_FLAVOR} \
			devel/py-argcomplete${MODPY_FLAVOR} \
			devel/py-arrow${MODPY_FLAVOR} \
			devel/py-setuptools${MODPY_FLAVOR} \
			devel/py-tqdm${MODPY_FLAVOR} \
			games/py-steam${MODPY_FLAVOR} \
			archivers/py-vpk${MODPY_FLAVOR} \
			graphics/py-pyqrcode${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR}

# tests not included in pypi tarball
NO_TEST =		Yes

FIX_EXTRACT_PERMISSIONS =	Yes

.include <bsd.port.mk>
