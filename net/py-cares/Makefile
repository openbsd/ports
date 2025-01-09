COMMENT=	Python interface to c-ares

MODPY_DISTV=	4.5.0
DISTNAME=	pycares-${MODPY_DISTV}
PKGNAME=	py-cares-${MODPY_DISTV}
CATEGORIES=	net

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += cares

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes
# some tests need network

USE_GMAKE=	Yes

RUN_DEPENDS=	devel/py-cffi
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	net/libcares
MAKE_ENV=	PYCARES_USE_SYSTEM_LIB=1 \
		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
