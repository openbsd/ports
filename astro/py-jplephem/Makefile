FIX_EXTRACT_PERMISSIONS=	Yes

COMMENT=	use a JPL ephemeris to predict planet positions

MODPY_EGG_VERSION =	2.21

DISTNAME=	jplephem-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	astro

# MIT
PERMIT_PACKAGE=	Yes

SITES.jpl=	https://naif.jpl.nasa.gov/pub/naif/generic_kernels/spk/planets/a_old_versions/
DISTFILES.jpl=	de405.bsp de421.bsp
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= jplephem/test.py

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	math/py-numpy${MODPY_FLAVOR}
TEST_DEPENDS=	astro/py-de421${MODPY_FLAVOR}

pre-test:
	cd ${FULLDISTDIR}; cp de405.bsp de421.bsp ${WRKSRC}/

.include <bsd.port.mk>
