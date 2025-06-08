COMMENT=	unittest subTest() support and subtests fixture

MODPY_DISTV=	0.12.1

DISTNAME=	pytest-subtests-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	2

CATEGORIES=	devel

HOMEPAGE=	https://github.com/pytest-dev/pytest-subtests

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	devel/py-attrs \
		devel/py-test

TEST_DEPENDS=	devel/py-test-xdist

.include <bsd.port.mk>
