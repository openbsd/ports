COMMENT=	Python Data Validation for Humans

MODPY_DISTV=	0.34.0
DISTNAME=	validators-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

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
