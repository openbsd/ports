COMMENT=	pytest plugin to re-run failures

MODPY_DISTV=	16.1
DISTNAME=	pytest_rerunfailures-${MODPY_DISTV}
PKGNAME=	py-test-rerunfailures-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/pytest-dev/pytest-rerunfailures

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# tests fail if py3-test-flake8 is installed
RUN_DEPENDS=	devel/py-test \
		sysutils/py-packaging

.include <bsd.port.mk>
