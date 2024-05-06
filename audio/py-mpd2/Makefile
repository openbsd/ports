COMMENT =		Python client interface for MPD

MODPY_EGG_VERSION =	3.0.5
DISTNAME =		python-mpd2-${MODPY_EGG_VERSION}
PKGNAME =		py-mpd2-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		audio

# GPLv3
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	mpd/tests.py

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-twisted${MODPY_FLAVOR}

.include <bsd.port.mk>
