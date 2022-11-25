COMMENT=	Javascript Object Signing and Encryption (JOSE)

CATEGORIES=	security devel

MODPY_EGG_VERSION= 1.13.0
DISTNAME=	josepy-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	1

# Apache 2.0
PERMIT_PACKAGE= Yes

FLAVORS=	python3
FLAVOR=		python3

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD =	setuptools
SUBST_VARS=	MODPY_FLAVOR

RUN_DEPENDS=	security/py-cryptography${MODPY_FLAVOR} \
		security/py-openssl${MODPY_FLAVOR}

BUILD_DEPENDS=	${RUN_DEPENDS}

# patched to disable flake8 tests as we don't have pytest-flake8 yet

.include <bsd.port.mk>
