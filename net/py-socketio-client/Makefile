# $OpenBSD: Makefile,v 1.6 2019/07/12 20:48:46 sthen Exp $

COMMENT =		python socket.io client library

MODPY_EGG_VERSION =	0.6.7
DISTNAME =		socketIO_client-${MODPY_EGG_VERSION}
PKGNAME =		py-socketIO-client-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =		net

HOMEPAGE =		https://github.com/invisibleroads/socketIO-client

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODPY_PI_DIR =		s/socketIO-client
MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			net/py-websocket-client${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

# Requires running stuff with node in another terminal
NO_TEST =		Yes

.include <bsd.port.mk>
