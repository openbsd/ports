# using bundled c-ares which is patched for TTL support
COMMENT=	Python interface to c-ares

MODPY_EGG_VERSION=	4.4.0
DISTNAME=	pycares-${MODPY_EGG_VERSION}
PKGNAME=	py-cares-${MODPY_EGG_VERSION}
CATEGORIES=	net

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
# some tests need network

USE_GMAKE=	Yes

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-cffi${MODPY_FLAVOR}
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
