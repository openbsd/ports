COMMENT=	IERS earth rotation and leap second tables for astropy

MODPY_DISTV=	0.2025.1.6.0.33.42
DISTNAME=	astropy_iers_data-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/g}

CATEGORIES=	astro

HOMEPAGE=	https://docs.astropy.org/en/latest/utils/iers.html

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
