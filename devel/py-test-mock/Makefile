COMMENT=	thin wrapper around mock package for easier use with pytest

MODPY_DISTV=	3.14.0
DISTNAME=	pytest-mock-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	devel
REVISION=	0

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
