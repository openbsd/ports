COMMENT=	Python Data Validation for Humans

MODPY_DISTV=	0.35.0
DISTNAME=	validators-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
# needs ["eth-hash[pycryptodome]>=0.7.0"]
MODPY_PYTEST_ARGS= --ignore tests/crypto_addresses/test_eth_address.py

RUN_DEPENDS=	devel/py-decorator

.include <bsd.port.mk>
