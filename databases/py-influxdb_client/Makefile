COMMENT=	Python client library for InfluxDB 2.x and Flux

MODPY_EGG_VERSION=	1.40.0
DISTNAME=	influxdb_client-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	databases

HOMEPAGE=	https://github.com/influxdata/influxdb-client-python

MAINTAINER=	Martin Reindl <martin@catai.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-certifi${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-rx${MODPY_FLAVOR} \
		www/py-urllib3${MODPY_FLAVOR}

# tests requires new packages: randomize, aioresponses
NO_TEST=	Yes

.include <bsd.port.mk>
