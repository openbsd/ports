COMMENT=	persistent/functional/immutable data structures

MODPY_DISTV =	0.20.0

DISTNAME=	pyrsistent-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/tobgu/pyrsistent/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

TEST_DEPENDS =	devel/py-hypothesis 

.include <bsd.port.mk>
