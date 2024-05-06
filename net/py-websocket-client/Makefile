COMMENT =		WebSocket client for Python

MODPY_EGG_VERSION =	1.7.0
DISTNAME =		websocket-client-${MODPY_EGG_VERSION}
PKGNAME =		py-websocket-client-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		https://github.com/websocket-client/websocket-client/

# Apache 2
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODPY_PI_DIR =		w/websocket-client
MODPY_PYBUILD =		setuptools

MODULES =		lang/python
FLAVORS =		python3
FLAVOR =		python3

# optional (also optional: wsaccel, not ported)
RUN_DEPENDS =		net/py-socks${MODPY_FLAVOR}

TEST_DEPENDS =		net/py-websockets${MODPY_FLAVOR}

.include <bsd.port.mk>
