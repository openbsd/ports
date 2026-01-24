COMMENT=	unittest subTest() support and subtests fixture

MODPY_DISTV=	0.15.0
DISTNAME=	pytest_subtests-${MODPY_DISTV}
PKGNAME=	py-pytest-subtests-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/pytest-dev/pytest-subtests

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-attrs \
		devel/py-test

TEST_DEPENDS=	devel/py-test-xdist

.include <bsd.port.mk>
