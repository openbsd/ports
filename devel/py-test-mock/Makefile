COMMENT=	thin wrapper around mock package for easier use with pytest

MODPY_DISTV=	3.15.1
DISTNAME=	pytest_mock-${MODPY_DISTV}
PKGNAME=	py-test-mock-${MODPY_DISTV}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/pytest-dev/pytest-mock/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

RUN_DEPENDS=	devel/py-test \
		devel/py-mock
TEST_DEPENDS=	${BASE_PKGPATH} \
		devel/py-test-asyncio

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

.include <bsd.port.mk>
