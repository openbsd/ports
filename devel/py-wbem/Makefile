COMMENT=	CIM operations over HTTP in Python

MODPY_EGG_VERSION=	1.7.2
DISTNAME=	pywbem-${MODPY_EGG_VERSION}
PKGNAME=	py-wbem-${MODPY_EGG_VERSION}
CATEGORIES=	devel

HOMEPAGE=	https://pywbem.github.io/

# LGPLv2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-ply${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		textproc/py-yamlloader${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

# needs yagot, pytest_easy_server, testfixtures
NO_TEST=	Yes
TEST_DEPENDS=	devel/py-mock${MODPY_FLAVOR} \
		www/py-formencode${MODPY_FLAVOR} \
		www/py-requests-mock${MODPY_FLAVOR}

post-install:
	rm ${PREFIX}/bin/*.bat

.include <bsd.port.mk>
