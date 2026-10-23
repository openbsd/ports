COMMENT=	WebSocket client for Python

MODPY_DISTV=	1.9.2
DISTNAME=	websocket_client-${MODPY_DISTV}
PKGNAME=	py-websocket-client-${MODPY_DISTV}

CATEGORIES=	net

HOMEPAGE=	https://github.com/websocket-client/websocket-client/

# Apache 2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# optional (also optional: wsaccel, not ported)
RUN_DEPENDS=	net/py-socks

TEST_DEPENDS=	net/py-websockets

.include <bsd.port.mk>
