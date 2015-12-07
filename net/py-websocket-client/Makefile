# $OpenBSD: Makefile,v 1.2 2015/12/07 21:16:25 sthen Exp $

COMMENT =		WebSocket client for Python

MODPY_EGG_VERSION =	0.34.0
REVISION =		0
DISTNAME =		websocket_client-${MODPY_EGG_VERSION}
PKGNAME =		py-websocket-client-${MODPY_EGG_VERSION}

CATEGORIES =		net

HOMEPAGE =		https://github.com/liris/websocket-client

MAINTAINER=		Florian Obser <florian+ports@narrans.de>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODPY_PI_DIR =		w/websocket-client
MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/wsdump.py ${PREFIX}/bin/wsdump.py${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
