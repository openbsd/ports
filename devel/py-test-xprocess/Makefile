COMMENT=	pytest plugin for managing processes across test runs

MODPY_EGG_VERSION=	0.23.0

DISTNAME=	pytest-xprocess-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:S/py//}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/pytest-dev/pytest-xprocess/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-py${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR}

# process spawned in test_interruption_clean_up.py doesn't find self
# with just the default PYTHONPATH setting
TEST_DEPENDS=	${BUILD_PKGPATH}

.include <bsd.port.mk>
