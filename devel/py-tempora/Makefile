COMMENT=	objects and routines pertaining to date and time

MODPY_DISTV=	5.9.0
DISTNAME=	tempora-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/jaraco/tempora

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

BUILD_DEPENDS=	misc/py-coherent.licensed

RUN_DEPENDS=	devel/py-jaraco-functools \
		devel/py-dateutil \
		devel/py-jaraco-context \
		devel/py-more-itertools \
		devel/py-jaraco-collections

# some tests want py-test-freezer, not in ports

.include <bsd.port.mk>
