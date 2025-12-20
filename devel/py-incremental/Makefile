COMMENT=	versioning library for Python projects

MODPY_DISTV=	24.11.0
DISTNAME=	incremental-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

MODPY_PYTEST_ARGS= --ignore tests/test_examples.py

RUN_DEPENDS=	devel/py-setuptools
TEST_DEPENDS=	devel/py-twisted

.include <bsd.port.mk>
