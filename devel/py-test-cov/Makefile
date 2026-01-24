COMMENT=	pytest plugin for measuring coverage

MODPY_DISTV=	7.0.0
DISTNAME=	pytest_cov-${MODPY_DISTV}
PKGNAME=	py-test-cov-${MODPY_DISTV}
CATEGORIES=	devel

HOMEPAGE=	https://pytest-cov.readthedocs.org/en/latest/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

BUILD_DEPENDS=	devel/py-hatch-fancy-pypi-readme
RUN_DEPENDS=	devel/py-coverage \
		devel/py-test \
		devel/py-pluggy

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/py-process-tests \
		devel/py-test-xdist \
		devel/py-virtualenv

.include <bsd.port.mk>
