# $OpenBSD: Makefile,v 1.11 2020/08/23 10:15:25 bket Exp $

COMMENT =		Python client for interacting with InfluxDB

MODPY_EGG_VERSION =	5.3.0
DISTNAME =		influxdb-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		databases

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}>=2.6.0 \
			devel/py-six${MODPY_FLAVOR}>=1.10.0 \
			devel/py-tz${MODPY_FLAVOR} \
			net/py-msgpack${MODPY_FLAVOR}>=0.6.2v0 \
			www/py-requests${MODPY_FLAVOR}>=2.17.0
TEST_DEPENDS +=		databases/influxdb \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR} \
			math/py-pandas${MODPY_FLAVOR} \
			www/py-requests-mock${MODPY_FLAVOR}

do-test:
	# XXX ignore tests in client_test_with_server.py as distfile is missing
	# server_tests/influxdb.conf.template
	cd ${WRKSRC}/influxdb/tests && nosetests${MODPY_BIN_SUFFIX} \
		--ignore-files=client_test_with_server.py

.include <bsd.port.mk>
