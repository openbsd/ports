COMMENT=	Javascript Object Signing and Encryption (JOSE)

CATEGORIES=	security devel

MODPY_EGG_VERSION= 1.14.0
DISTNAME=	josepy-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

# Apache 2.0
PERMIT_PACKAGE= Yes

FLAVORS=	python3
FLAVOR=		python3

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD =	poetry-core

RUN_DEPENDS=	security/py-cryptography${MODPY_FLAVOR} \
		security/py-openssl${MODPY_FLAVOR}

BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=	devel/py-test-flake8${MODPY_FLAVOR}

.include <bsd.port.mk>
