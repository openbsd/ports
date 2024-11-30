COMMENT=	persistent/functional/immutable data structures

MODPY_EGG_VERSION =	0.20.0

DISTNAME=	pyrsistent-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/tobgu/pyrsistent/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

TEST_DEPENDS =	devel/py-hypothesis${MODPY_FLAVOR} 

.include <bsd.port.mk>
