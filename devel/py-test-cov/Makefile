COMMENT=	pytest plugin for measuring coverage

MODPY_DISTV=	6.0.0
DISTNAME=	pytest-cov-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	devel
REVISION=	0

HOMEPAGE=	https://pytest-cov.readthedocs.org/en/latest/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-coverage \
		devel/py-test

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/py-fields \
		devel/py-process-tests \
		devel/py-test-xdist \
		devel/py-virtualenv
# also wants py-hunter?

.include <bsd.port.mk>
