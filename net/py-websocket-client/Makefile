# $OpenBSD: Makefile,v 1.4 2016/11/03 10:12:49 florian Exp $

COMMENT =		WebSocket client for Python

MODPY_EGG_VERSION =	0.37.0
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
