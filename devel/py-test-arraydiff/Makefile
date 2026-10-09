COMMENT=	pytest plugin to generate/compare data arrays

MODPY_DISTV=	0.7.0
DISTNAME=	pytest_arraydiff-${MODPY_DISTV}
PKGNAME=	py-test-arraydiff-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/astropy/pytest-arraydiff

# BSD
PERMIT_PACKAGE= Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-test \
		math/py-numpy
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		astro/py-astropy

.include <bsd.port.mk>
