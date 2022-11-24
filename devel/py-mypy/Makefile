COMMENT=	optional static type checker for Python

# additional deps needed for 0.980+:
# "types-psutil", "types-setuptools", "types-typed-ast"
MODPY_EGG_VERSION=	0.971

DISTNAME=	mypy-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# https://github.com/python/mypy
HOMEPAGE=	https://www.mypy-lang.org/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
TEST_DEPENDS=	devel/py-test-xdist${MODPY_FLAVOR}
# additional deps
#MODPY_PYTEST_ARGS= --ignore tests/providers/test_internet.py \
#		--ignore tests/providers/test_ssn.py

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
