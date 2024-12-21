COMMENT =		Python client interface for MPD

MODPY_DISTV =	3.0.5
DISTNAME =		python-mpd2-${MODPY_DISTV}
PKGNAME =		py-mpd2-${MODPY_DISTV}
REVISION =		1

CATEGORIES =		audio

# GPLv3
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	mpd/tests.py

TEST_DEPENDS =		devel/py-mock \
			devel/py-twisted

.include <bsd.port.mk>
