COMMENT=	Python utility / library to sort Python imports

MODPY_EGG_VERSION=	5.10.1
DISTNAME=	isort-${MODPY_EGG_VERSION}
PKGNAME=	py-isort-${MODPY_EGG_VERSION}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/timothycrosley/isort

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core

MODPY_PYTEST_ARGS= \
		--ignore tests/integration/test_hypothesmith.py \
		--ignore tests/unit/test_pylama_isort.py

FLAVORS=	python3
FLAVOR=		python3

# at least some black tests are failing, possibly due to our old
# version of black.
TEST_DEPENDS=	devel/py-test-mock${MODPY_FLAVOR} \
		textproc/py-black${MODPY_FLAVOR}

.include <bsd.port.mk>
