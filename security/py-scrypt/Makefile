COMMENT=	support for the scrypt key derivation function

MODPY_DISTV=	0.8.29
DISTNAME=	scrypt-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	security

HOMEPAGE=	https://github.com/holgern/py-scrypt

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB +=	crypto pthread

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

.include <bsd.port.mk>
