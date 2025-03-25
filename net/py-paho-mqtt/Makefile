COMMENT=	MQTT Python client library

MODPY_DISTV=	2.1.0
DISTNAME=	paho_mqtt-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/g}

# https://github.com/eclipse-paho/paho.mqtt.python
HOMEPAGE=	https://eclipse.dev/paho/clients/python/

CATEGORIES=	net

# EPL/EDL
PERMIT_PACKAGE=Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

MODPY_ADJ_FILES=examples/*.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-paho-mqtt
	${INSTALL_DATA} ${WRKSRC}/examples/*.py \
		${PREFIX}/share/examples/py-paho-mqtt

.include <bsd.port.mk>
