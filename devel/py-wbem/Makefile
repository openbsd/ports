COMMENT=	CIM operations over HTTP in Python

MODPY_DISTV=	1.7.2
DISTNAME=	pywbem-${MODPY_DISTV}
PKGNAME=	py-wbem-${MODPY_DISTV}
CATEGORIES=	devel
REVISION=	0

HOMEPAGE=	https://pywbem.github.io/

# LGPLv2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	devel/py-ply \
		textproc/py-yaml \
		textproc/py-yamlloader \
		www/py-requests

# needs yagot, pytest_easy_server, testfixtures
NO_TEST=	Yes
TEST_DEPENDS=	devel/py-mock \
		www/py-formencode \
		www/py-requests-mock

post-install:
	rm ${PREFIX}/bin/*.bat

.include <bsd.port.mk>
