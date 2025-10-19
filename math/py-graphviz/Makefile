COMMENT=	simple Python interface for Graphviz

MODPY_DISTV=	0.21
DISTNAME=	graphviz-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	math

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-mock \
		devel/py-test-cov \
		devel/py-test-mock \
		math/graphviz

# https://github.com/xflr6/graphviz/issues/219
# https://github.com/pytest-dev/pytest/issues/12123
MODPY_PYTEST_ARGS= --ignore tests/conftest.py \
		   --ignore tests/backend/conftest.py

.include <bsd.port.mk>
