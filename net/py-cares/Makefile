# using bundled c-ares which is patched for TTL support
COMMENT=	Python interface to c-ares

MODPY_DISTV=	4.4.0
DISTNAME=	pycares-${MODPY_DISTV}
PKGNAME=	py-cares-${MODPY_DISTV}
CATEGORIES=	net
REVISION=	0

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
# some tests need network

USE_GMAKE=	Yes

RUN_DEPENDS=	devel/py-cffi
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
