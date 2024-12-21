COMMENT =		python socket.io client library

MODPY_DISTV =	0.7.2
DISTNAME =		socketIO-client-${MODPY_DISTV}
PKGNAME =		py-socketIO-client-${MODPY_DISTV}
REVISION =		1

CATEGORIES =		net

HOMEPAGE =		https://github.com/invisibleroads/socketIO-client

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODPY_PI_DIR =		s/socketIO-client
MODPY_PYBUILD =		setuptools

MODULES =		lang/python

RUN_DEPENDS =		devel/py-six \
			net/py-websocket-client \
			www/py-requests

# Requires running stuff with node in another terminal
NO_TEST =		Yes

.include <bsd.port.mk>
