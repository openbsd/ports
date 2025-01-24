COMMENT=	Python client library for InfluxDB 2.x and Flux

MODPY_DISTV=	1.48.0
DISTNAME=	influxdb_client-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	databases

HOMEPAGE=	https://github.com/influxdata/influxdb-client-python

MAINTAINER=	Martin Reindl <martin@catai.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-certifi \
		devel/py-dateutil \
		devel/py-rx \
		www/py-urllib3

# tests require running influxdb
NO_TEST=	Yes

.include <bsd.port.mk>
