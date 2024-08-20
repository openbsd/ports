COMMENT=	simplify asserts in tests by misusing __eq__

MODPY_EGG_VERSION=	0.8.0
DISTNAME=	dirty_equals-${MODPY_EGG_VERSION}
PKGNAME=	py-dirty-equals-${MODPY_EGG_VERSION}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/samuelcolvin/dirty-equals

MAINTAINER =	Renaud Allard <renaud@allard.it>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

TEST_DEPENDS=	devel/py-appdirs${MODPY_FLAVOR} \
		devel/py-more-itertools${MODPY_FLAVOR} \
		devel/py-pydantic${MODPY_FLAVOR}

# needs pytest-examples
MODPY_PYTEST_ARGS= --ignore tests/test_docs.py

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
