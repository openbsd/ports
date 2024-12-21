COMMENT=	pytest plugin for managing processes across test runs

MODPY_DISTV=	1.0.2

DISTNAME=	pytest-xprocess-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/py//}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/pytest-dev/pytest-xprocess/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	devel/py-py \
		devel/py-test \
		sysutils/py-psutil

# process spawned in test_interruption_clean_up.py doesn't find self
# with just the default PYTHONPATH setting
TEST_DEPENDS=	${BUILD_PKGPATH}

.include <bsd.port.mk>
