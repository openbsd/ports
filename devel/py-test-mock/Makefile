COMMENT=	thin wrapper around mock package for easier use with pytest

MODPY_EGG_VERSION=	3.10.0
REVISION=	1
DISTNAME=	pytest-mock-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/pytest-dev/pytest-mock/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

RUN_DEPENDS=	devel/py-test${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR}
TEST_DEPENDS=	${BASE_PKGPATH} \
		devel/py-test-asyncio${MODPY_FLAVOR}

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
