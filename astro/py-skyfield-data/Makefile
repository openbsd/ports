COMMENT=	offline data for py-skyfield

MODPY_DISTV=	6.0.0
REVISION=	0
DISTNAME=	skyfield-data-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

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
