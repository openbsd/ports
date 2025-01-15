COMMENT=	Python client library for InfluxDB 1.x

MODPY_DISTV=	5.3.2
DISTNAME=	influxdb-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	databases

HOMEPAGE=	https://github.com/influxdata/influxdb-python

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-dateutil \
		devel/py-six \
		devel/py-tz \
		net/py-msgpack \
		www/py-requests
TEST_DEPENDS=	databases/influxdb \
		devel/py-mock \
		devel/py-nose \
		math/py-pandas \
		www/py-requests-mock

.include <bsd.port.mk>
