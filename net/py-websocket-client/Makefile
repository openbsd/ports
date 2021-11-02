# $OpenBSD: Makefile,v 1.13 2021/11/02 00:01:42 sthen Exp $

COMMENT =		WebSocket client for Python

MODPY_EGG_VERSION =	0.37.0
DISTNAME =		websocket_client-${MODPY_EGG_VERSION}
PKGNAME =		py-websocket-client-${MODPY_EGG_VERSION}
REVISION =		7

CATEGORIES =		net

HOMEPAGE =		https://github.com/liris/websocket-client

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODPY_PI_DIR =		w/websocket-client
MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
