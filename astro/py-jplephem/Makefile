FIX_EXTRACT_PERMISSIONS=	Yes

COMMENT=	use a JPL ephemeris to predict planet positions

MODPY_DISTV =	2.22

DISTNAME=	jplephem-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	astro

# MIT
PERMIT_PACKAGE=	Yes

SITES.jpl=	https://naif.jpl.nasa.gov/pub/naif/generic_kernels/
.for d f in \
	spk/planets/a_old_versions de405.bsp \
	spk/planets/a_old_versions de421.bsp \
	pck moon_pa_de421_1900-2050.bpc
DISTFILES.jpl += {$d/}$f
TESTFILES += $f
.endfor

EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= jplephem/test.py

RUN_DEPENDS=	math/py-numpy
TEST_DEPENDS=	astro/py-de421

pre-test:
	cd ${FULLDISTDIR}; cp ${TESTFILES} ${WRKSRC}/

.include <bsd.port.mk>
