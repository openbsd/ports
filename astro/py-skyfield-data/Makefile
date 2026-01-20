COMMENT=	offline data for py-skyfield

MODPY_DISTV=	7.0.0
DISTNAME=	skyfield_data-${MODPY_DISTV}
PKGNAME=	py-skyfield-data-${MODPY_DISTV}

CATEGORIES=	astro

HOMEPAGE=	https://github.com/brunobord/skyfield-data

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	astro/py-astropy-iers-data \
		astro/py-skyfield

.include <bsd.port.mk>
