COMMENT=	async MQTT Python client library

MODPY_DISTV=	2.5.0
DISTNAME=	aiomqtt-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	net

# https://github.com/empicano/aiomqtt
HOMEPAGE=	https://aiomqtt.bo3hm.com/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

RUN_DEPENDS=	net/py-paho-mqtt
TEST_DEPENDS=	net/py-anyio

.include <bsd.port.mk>
