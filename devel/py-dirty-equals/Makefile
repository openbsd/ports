COMMENT=	simplify asserts in tests by misusing __eq__

MODPY_DISTV=	0.8.0
DISTNAME=	dirty_equals-${MODPY_DISTV}
PKGNAME=	py-dirty-equals-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/samuelcolvin/dirty-equals

MAINTAINER =	Renaud Allard <renaud@allard.it>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

TEST_DEPENDS=	devel/py-appdirs \
		devel/py-more-itertools \
		devel/py-pydantic

# needs pytest-examples
MODPY_PYTEST_ARGS= --ignore tests/test_docs.py

.include <bsd.port.mk>
