COMMENT =		minimal asyncio memcached client

MODPY_EGG_VERSION =	0.8.2

DISTNAME =		aiomcache-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		misc

HOMEPAGE =		https://github.com/aio-libs/aiomcache/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		misc/py-memcached${MODPY_FLAVOR}

.include <bsd.port.mk>
