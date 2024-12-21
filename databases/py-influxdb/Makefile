COMMENT =		Python client library for InfluxDB 1.x

MODPY_DISTV =	5.3.1
DISTNAME =		influxdb-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		6

CATEGORIES =		databases

HOMEPAGE =		https://github.com/influxdata/influxdb-python

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS +=		devel/py-dateutil>=2.6.0 \
			devel/py-six>=1.10.0 \
			devel/py-tz \
			net/py-msgpack>=0.6.2v0 \
			www/py-requests>=2.17.0
TEST_DEPENDS +=		databases/influxdb \
			devel/py-mock \
			devel/py-nose \
			math/py-pandas \
			www/py-requests-mock

do-test:
	# XXX ignore tests in client_test_with_server.py as distfile is missing
	# server_tests/influxdb.conf.template
	cd ${WRKSRC}/influxdb/tests && nosetests \
		--ignore-files=client_test_with_server.py

.include <bsd.port.mk>
