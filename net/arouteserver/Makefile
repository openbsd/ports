COMMENT=	tool to automatically build BGP route server configurations

# pypi sdist doesn't include tests
GH_ACCOUNT=	pierky
GH_PROJECT=	arouteserver
GH_TAGNAME=	v${MODPY_EGG_VERSION}

MODPY_EGG_VERSION=	1.21.7
DISTNAME=	arouteserver-${MODPY_EGG_VERSION}

CATEGORIES=	net

HOMEPAGE=	https://arouteserver.readthedocs.org/

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

RUN_DEPENDS=	net/aggregate6 \
		net/bgpq4 \
		sysutils/py-packaging${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/py-jinja2${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-urllib3${MODPY_FLAVOR}
TEST_DEPENDS=	www/py-requests-mock${MODPY_FLAVOR} \
		net/bgpq3

MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= \
		--ignore pierky/arouteserver/tests/live_tests \
		--ignore tests/real \
		--ignore tests/live_tests

.include <bsd.port.mk>
