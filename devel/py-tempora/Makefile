COMMENT=	objects and routines pertaining to date and time

MODPY_DISTV=	5.5.1
DISTNAME=	tempora-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/jaraco/tempora

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	devel/py-jaraco-functools>=1.2.0 \
		devel/py-tz

TEST_DEPENDS=	devel/py-freezegun

.include <bsd.port.mk>
