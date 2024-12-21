COMMENT=	extensions to the Python unit testing framework

MODPY_DISTV=	1.8.1
DISTNAME=	testtools-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	10

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD =	setuptools
BUILD_DEPENDS=	devel/py-pbr
RUN_DEPENDS=	devel/py-extras

# needs traceback2, python-mimeparse, newer unittest2
NO_TEST=	Yes

.include <bsd.port.mk>
