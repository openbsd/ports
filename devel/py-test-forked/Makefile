COMMENT=	run each test in a forked subprocess

MODPY_DISTV=	1.7.5
DISTNAME=	pytest_forked-${MODPY_DISTV}
PKGNAME=	py-test-forked-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/pytest-dev/pytest-forked

# MIT
PERMIT_PACKAGE=Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

MODPY_PYTEST_ARGS= -v

RUN_DEPENDS=	devel/py-test

.include <bsd.port.mk>
