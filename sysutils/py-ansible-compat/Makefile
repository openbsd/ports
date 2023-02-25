COMMENT=	functions for working with Ansible from Python

MODPY_EGG_VERSION=	3.0.1
DISTNAME=	ansible-compat-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	sysutils/py-packaging${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		sysutils/py-subprocess-tee${MODPY_FLAVOR} \
		devel/py-jsonschema${MODPY_FLAVOR}

# some tests require network
PORTHOME=	${WRKDIR}
TEST_DEPENDS=	devel/py-flaky${MODPY_FLAVOR} \
		devel/py-test-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
