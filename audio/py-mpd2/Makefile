COMMENT =		Python client interface for MPD

MODPY_EGG_VERSION =	3.0.4
DISTNAME =		python-mpd2-${MODPY_EGG_VERSION}
PKGNAME =		py-mpd2-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		audio

# GPLv3
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		${BUILD_PKGPATH} \
			devel/py-mock${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/python${MODPY_VERSION} mpd/tests.py

.include <bsd.port.mk>
