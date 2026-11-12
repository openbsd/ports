COMMENT=	Javascript Object Signing and Encryption (JOSE)

MODPY_DISTV=	2.3.0
DISTNAME=	josepy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	security devel

# Apache 2.0
PERMIT_PACKAGE= Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

RUN_DEPENDS=	security/py-cryptography

.include <bsd.port.mk>
