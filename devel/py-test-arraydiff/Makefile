COMMENT=	pytest plugin to generate/compare data arrays

MODPY_EGG_VERSION=	0.6.1

DISTNAME=	pytest-arraydiff-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:S/py//}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/astropy/pytest-arraydiff

# BSD
PERMIT_PACKAGE= Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

FLAVOR=		python3
FLAVORS=	python3

RUN_DEPENDS=	devel/py-test${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR}
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		astro/py-astropy${MODPY_FLAVOR}

pre-test:
	ln -fs ${LOCALBASE}/bin/py.test ${WRKDIR}/bin/pytest

.include <bsd.port.mk>
