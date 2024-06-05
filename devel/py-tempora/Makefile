COMMENT=	objects and routines pertaining to date and time

MODPY_EGG_VERSION=	5.5.1
DISTNAME=	tempora-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/jaraco/tempora

# MIT
PERMIT_PACKAGE=	Yes

FLAVORS=	python3
FLAVOR=		python3

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	devel/py-jaraco-functools${MODPY_FLAVOR}>=1.2.0 \
		devel/py-tz${MODPY_FLAVOR}

TEST_DEPENDS=	devel/py-freezegun${MODPY_FLAVOR}

.include <bsd.port.mk>
