COMMENT=	persistent/functional/immutable data structures

MODPY_DISTV =	0.20.0
DISTNAME=	pyrsistent-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	2

CATEGORIES=	devel

HOMEPAGE=	https://github.com/tobgu/pyrsistent/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

TEST_DEPENDS =	devel/py-hypothesis

.include <bsd.port.mk>
