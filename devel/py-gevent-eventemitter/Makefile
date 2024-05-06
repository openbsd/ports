COMMENT =		Implements EventEmitter using gevent

MODPY_EGG_VERSION =	2.1
DISTNAME =		gevent-eventemitter-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
HOMEPAGE =		https://github.com/rossengeorgiev/gevent-eventemitter
REVISION =		2

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-gevent${MODPY_FLAVOR} \
			devel/py-zopeevent${MODPY_FLAVOR} \
			devel/py-zopeinterface${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-greenlet${MODPY_FLAVOR} \
			devel/py-zopeevent${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

# tests not included in pypi tarball
NO_TEST =		Yes

.include <bsd.port.mk>
