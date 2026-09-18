COMMENT=	generate and work with holidays in Python

MODPY_DISTV=	0.104
DISTNAME=	holidays-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE= Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-dateutil \
		korean/py-korean-lunar-calendar

# tests in gh distfile, but then locale files need creating
NO_TEST=	Yes

.include <bsd.port.mk>
