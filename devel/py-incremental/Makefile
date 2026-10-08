COMMENT=	versioning library for Python projects

MODPY_DISTV=	24.11.0
DISTNAME=	incremental-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

MODPY_PYTEST_ARGS= --ignore tests/test_examples.py

RUN_DEPENDS=	devel/py-packaging
TEST_DEPENDS=	devel/py-twisted

.include <bsd.port.mk>
