COMMENT=	computes positions for the stars, planets, and satellites

MODPY_DISTV =	1.0.1
DISTNAME=	kosmorro-${MODPY_DISTV}

CATEGORIES=	astro

# https://github.com/Kosmorro/kosmorro
HOMEPAGE=	https://kosmorro.space/

# AGPL
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-tabulate \
		graphics/py-termcolor \
		astro/py-kosmorrolib \
		devel/py-dateutil \
		devel/py-babel \
		devel/py-importlib-metadata

# not in pypi sdist
NO_TEST=	Yes

.include <bsd.port.mk>
