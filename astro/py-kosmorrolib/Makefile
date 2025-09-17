COMMENT=	computes positions for the stars, planets, and satellites

MODPY_DISTV=	1.0.12
REVISION=	0
DISTNAME=	kosmorrolib-${MODPY_DISTV}
PKGNAME=	py-kosmorrolib-${MODPY_DISTV}

CATEGORIES=	astro

# https://github.com/Kosmorro/lib
HOMEPAGE=	https://kosmorro.space/lib/doc/

# AGPL
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

RUN_DEPENDS=	astro/py-skyfield \
		astro/py-skyfield-data \
		devel/py-dateutil

NO_TEST=	Yes

.include <bsd.port.mk>
