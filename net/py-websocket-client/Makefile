COMMENT =		WebSocket client for Python

MODPY_DISTV =	1.7.0
DISTNAME =		websocket-client-${MODPY_DISTV}
PKGNAME =		py-websocket-client-${MODPY_DISTV}
REVISION =		1

CATEGORIES =		net

HOMEPAGE =		https://github.com/websocket-client/websocket-client/

# Apache 2
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODPY_PI_DIR =		w/websocket-client
MODPY_PYBUILD =		setuptools

MODULES =		lang/python

# optional (also optional: wsaccel, not ported)
RUN_DEPENDS =		net/py-socks

TEST_DEPENDS =		net/py-websockets

.include <bsd.port.mk>
