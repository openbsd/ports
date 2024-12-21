COMMENT=	pytest plugin to generate/compare data arrays

MODPY_DISTV=	0.6.1

DISTNAME=	pytest-arraydiff-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/py//}
REVISION=	1

CATEGORIES=	devel

HOMEPAGE=	https://github.com/astropy/pytest-arraydiff

# BSD
PERMIT_PACKAGE= Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	devel/py-test \
		math/py-numpy
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		astro/py-astropy

pre-test:
	ln -fs ${LOCALBASE}/bin/py.test ${WRKDIR}/bin/pytest

.include <bsd.port.mk>
