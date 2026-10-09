COMMENT=	pytest plugin for managing processes across test runs

MODPY_DISTV=	1.0.2
REVISION=	2
#DISTNAME=	pytest_xprocess-${MODPY_DISTV}
DISTNAME=	pytest-xprocess-${MODPY_DISTV}
PKGNAME=	py-test-xprocess-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/pytest-dev/pytest-xprocess/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-test \
		sysutils/py-psutil

# process spawned in test_interruption_clean_up.py doesn't find self
# with just the default PYTHONPATH setting
TEST_DEPENDS=	${BUILD_PKGPATH}

.include <bsd.port.mk>
