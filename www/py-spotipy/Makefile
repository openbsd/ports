COMMENT =		lightweight library for the Spotify Web API

MODPY_EGG_VERSION =	2.24.0
DISTNAME =		spotipy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www audio

HOMEPAGE =		https://spotipy.readthedocs.io

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		databases/py-redis${MODPY_FLAVOR}>=3.5.3 \
			misc/py-memcached${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}>=2.25.0 \
			www/py-urllib3${MODPY_FLAVOR}>=1.26.0

NO_TEST =		Yes

.include <bsd.port.mk>
