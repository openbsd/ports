COMMENT=	Python support for Portable Symmetric Key Container (PSKC)

MODPY_DISTV=	1.4
DISTNAME=	python_pskc-${MODPY_DISTV}
PKGNAME=	py-python-pskc-${MODPY_DISTV}

CATEGORIES=	security

# https://github.com/arthurdejong/python-pskc
HOMEPAGE=	https://arthurdejong.org/python-pskc/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-dateutil \
		security/py-cryptography

# test_signature.doctest fails as we don't have the optional dep signxml
TEST_DEPENDS=	devel/py-test-cov

.include <bsd.port.mk>
