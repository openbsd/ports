COMMENT=	py.test isort plugin to check import ordering using isort

DISTNAME=	pytest_isort-${MODPY_EGG_VERSION}
PKGNAME=	py-test-isort-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION=	4.0.0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/stephrdev/pytest-isort

# MIT
PERMIT_PACKAGE=	Yes

FLAVORS=	python3
FLAVOR=		python3

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-isort${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR}

.include <bsd.port.mk>
