COMMENT=	functions and fixtures for facilitating tests

MODPY_DISTV=	5.5.1
DISTNAME=	jaraco_test-${MODPY_DISTV}
PKGNAME=	py-jaraco-test-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/jaraco/jaraco.test

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm
MODPY_PYTEST_ARGS= tests

RUN_DEPENDS=	devel/py-jaraco-collections \
		devel/py-jaraco-context \
		devel/py-jaraco-functools

.include <bsd.port.mk>
