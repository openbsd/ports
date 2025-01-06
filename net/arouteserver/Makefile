COMMENT=	tool to automatically build BGP route server configurations

# pypi sdist doesn't include tests
GH_ACCOUNT=	pierky
GH_PROJECT=	arouteserver
GH_TAGNAME=	v${MODPY_DISTV}

MODPY_DISTV=	1.23.2
DISTNAME=	arouteserver-${MODPY_DISTV}

CATEGORIES=	net

HOMEPAGE=	https://arouteserver.readthedocs.org/

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

RUN_DEPENDS=	net/aggregate6 \
		net/bgpq4 \
		sysutils/py-packaging \
		textproc/py-yaml \
		www/py-jinja2 \
		www/py-requests \
		www/py-urllib3
TEST_DEPENDS=	www/py-requests-mock \
		net/bgpq3

MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= \
		--ignore pierky/arouteserver/tests/live_tests \
		--ignore tests/real \
		--ignore tests/live_tests

.include <bsd.port.mk>
