COMMENT=	support for the scrypt key derivation function

MODPY_DISTV=	0.8.27

DISTNAME=	scrypt-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	security

HOMEPAGE=	http://bitbucket.org/mhallin/py-scrypt

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB +=	crypto pthread

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS=	scrypt/tests

.include <bsd.port.mk>
