COMMENT=	classes and methods to define and execute parsing grammars

MODPY_DISTV=	3.2.3
DISTNAME=	pyparsing-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/pyparsing/pyparsing/

MAINTAINER =	Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

# test_diagram needs railroad (some others want it too, but test_diagram
# makes test collection fail)
MODPY_PYTEST_ARGS= --ignore tests/test_diagram.py tests
TEST_DEPENDS=	graphics/py-matplotlib

.include <bsd.port.mk>
