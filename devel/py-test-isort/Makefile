COMMENT=	py.test isort plugin to check import ordering using isort

DISTNAME=	pytest_isort-${MODPY_DISTV}
PKGNAME=	py-test-isort-${MODPY_DISTV}
MODPY_DISTV=	4.0.0
REVISION=		0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/stephrdev/pytest-isort

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-isort \
		devel/py-test

.include <bsd.port.mk>
