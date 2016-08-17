# $OpenBSD: Makefile,v 1.2 2016/08/17 07:02:31 jasper Exp $

COMMENT =		MQTT Python client library

MODPY_EGG_VERSION =	1.2
DISTNAME =		paho-mqtt-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

HOMEPAGE =		http://www.eclipse.org/paho/clients/python/

CATEGORIES =		net

# EPL/EDL
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

MODPY_ADJ_FILES =	examples/*.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}paho-mqtt
	${INSTALL_DATA} ${WRKSRC}/examples/*.py \
		${PREFIX}/share/examples/${MODPY_PY_PREFIX}paho-mqtt

.include <bsd.port.mk>
