COMMENT=	Javascript Object Signing and Encryption (JOSE)

CATEGORIES=	security devel

MODPY_DISTV=	1.15.0
DISTNAME=	josepy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

# Apache 2.0
PERMIT_PACKAGE= Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core

RUN_DEPENDS=	security/py-cryptography \
		security/py-openssl

BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=	devel/py-test-flake8

.include <bsd.port.mk>
