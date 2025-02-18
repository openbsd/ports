COMMENT=	extensions to the Python unit testing framework

MODPY_DISTV=	2.7.2
DISTNAME=	testtools-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs
BUILD_DEPENDS=	devel/py-setuptools
RUN_DEPENDS=	devel/py-fixtures

# tests need "testscenarios"
NO_TEST=	Yes

.include <bsd.port.mk>
