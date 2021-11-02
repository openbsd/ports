# $OpenBSD: Makefile,v 1.3 2021/11/02 00:02:55 sthen Exp $

COMMENT =		use requests to talk HTTP via a UNIX domain socket

MODPY_EGG_VERSION =	0.2.0
DISTNAME =		requests-unixsocket-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

# Apache-2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	requests_unixsocket/tests

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-pbr${MODPY_FLAVOR}
RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR}>=1.1 \
			www/py-urllib3${MODPY_FLAVOR}>=1.8
TEST_DEPENDS =		devel/py-apipkg${MODPY_FLAVOR} \
			devel/py-appdirs${MODPY_FLAVOR} \
			devel/py-execnet${MODPY_FLAVOR} \
			devel/py-parsing${MODPY_FLAVOR} \
			devel/py-py${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			www/py-waitress${MODPY_FLAVOR}

.include <bsd.port.mk>
