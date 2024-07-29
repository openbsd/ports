COMMENT=	Python parsing module

MODPY_EGG_VERSION=	3.1.2
DISTNAME=	pyparsing-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/pyparsing/pyparsing/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	flit_core

FLAVORS=	python3
FLAVOR=		python3

# test_diagram needs railroad (some others want it too, but test_diagram
# makes test collection fail)
MODPY_PYTEST_ARGS=	--ignore tests/test_diagram.py tests

.include <bsd.port.mk>
