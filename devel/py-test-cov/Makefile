COMMENT=	pytest plugin for measuring coverage

MODPY_EGG_VERSION=	6.0.0
DISTNAME=	pytest-cov-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	devel

HOMEPAGE=	https://pytest-cov.readthedocs.org/en/latest/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-coverage${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR}

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/py-fields${MODPY_FLAVOR} \
		devel/py-process-tests${MODPY_FLAVOR} \
		devel/py-test-xdist${MODPY_FLAVOR} \
		devel/py-virtualenv${MODPY_FLAVOR}
# also wants py-hunter?

.include <bsd.port.mk>
