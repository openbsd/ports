COMMENT=	Python Data Validation for Humans

MODPY_EGG_VERSION=	0.34.0
DISTNAME=	validators-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
# needs ["eth-hash[pycryptodome]>=0.7.0"]
MODPY_PYTEST_ARGS= --ignore tests/crypto_addresses/test_eth_address.py

RUN_DEPENDS=	devel/py-decorator${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
