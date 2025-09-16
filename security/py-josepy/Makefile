COMMENT=	Javascript Object Signing and Encryption (JOSE)

CATEGORIES=	security devel

MODPY_DISTV=	2.1.0
DISTNAME=	josepy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

# Apache 2.0
PERMIT_PACKAGE= Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

RUN_DEPENDS=	security/py-cryptography

TEST_DEPENDS=	devel/py-test-flake8

.include <bsd.port.mk>
