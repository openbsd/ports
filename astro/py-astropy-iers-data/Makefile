COMMENT=	IERS earth rotation and leap second tables for astropy

MODPY_DISTV=	0.2025.9.1.0.42.11
DISTNAME=	astropy_iers_data-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/g}

CATEGORIES=	astro

HOMEPAGE=	https://docs.astropy.org/en/latest/utils/iers.html

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatch-vcs
MODPY_PI=	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
