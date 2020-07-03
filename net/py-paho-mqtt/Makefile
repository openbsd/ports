# $OpenBSD: Makefile,v 1.9 2020/07/03 21:13:02 sthen Exp $

COMMENT =		MQTT Python client library

MODPY_EGG_VERSION =	1.4.0
DISTNAME =		paho-mqtt-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

HOMEPAGE =		http://www.eclipse.org/paho/clients/python/

CATEGORIES =		net

# EPL/EDL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

MODPY_ADJ_FILES =	examples/*.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}paho-mqtt
	${INSTALL_DATA} ${WRKSRC}/examples/*.py \
		${PREFIX}/share/examples/${MODPY_PY_PREFIX}paho-mqtt

.include <bsd.port.mk>
