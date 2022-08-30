COMMENT =	WebSocket client & server library, WAMP real-time framework

MODPY_EGG_VERSION =	22.7.1
DISTNAME =	autobahn-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	www

HOMEPAGE =	https://github.com/crossbario/autobahn-python

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes
FLAVORS =	python3
FLAVOR  =	python3

BUILD_DEPENDS =	devel/py-txaio${MODPY_FLAVOR}>=18.8.1 \
		devel/py-cffi${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR}

# requires an update to unittest and then traceback2 and linecache2
NO_TEST =	Yes

.include <bsd.port.mk>
