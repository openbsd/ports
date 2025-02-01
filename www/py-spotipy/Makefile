COMMENT =		lightweight library for the Spotify Web API

MODPY_DISTV =		2.25.0
DISTNAME =		spotipy-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www audio

HOMEPAGE =		https://spotipy.readthedocs.io

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		databases/py-redis>=3.5.3 \
			misc/py-memcached \
			www/py-requests>=2.25.0 \
			www/py-urllib3>=1.26.0

NO_TEST =		Yes

.include <bsd.port.mk>
