COMMENT=	bcrypt blowfish password hashing for Python

MODPY_EGG_VERSION= 3.2.2
DISTNAME=	bcrypt-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	security

# Apache License 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes
MODPY_PYTEST=	Yes

FLAVORS=        python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-cffi${MODPY_FLAVOR}
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
