COMMENT =		Python interface to Redis

MODPY_EGG_VERSION =	3.5.3

GH_ACCOUNT =		andymccurdy
GH_PROJECT =		redis-py
GH_TAGNAME =		${MODPY_EGG_VERSION}

PKGNAME =		py-redis-${MODPY_EGG_VERSION}
CATEGORIES =		databases
REVISION =		5

HOMEPAGE =		https://github.com/andymccurdy/redis-py/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PYBUILD =		setuptools

# Be sure to have a redis server running on localhost
TEST_IS_INTERACTIVE =	Yes

TEST_DEPENDS =		databases/redis \
			devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
