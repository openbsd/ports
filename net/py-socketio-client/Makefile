# $OpenBSD: Makefile,v 1.1.1.1 2015/11/17 19:55:11 florian Exp $

COMMENT =		python socket.io client library

MODPY_EGG_VERSION =	0.6.5
DISTNAME =		socketIO_client-${MODPY_EGG_VERSION}
PKGNAME =		py-socketIO-client-${MODPY_EGG_VERSION}

CATEGORIES =		net

HOMEPAGE =		https://github.com/invisibleroads/socketIO-client

MAINTAINER=		Florian Obser <florian+ports@narrans.de>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODPY_PI_DIR =		s/socketIO-client
MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		net/py-websocket-client${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
