COMMENT=	construction, analysis and modification of binary data

MODPY_EGG_VERSION=	4.2.3
DISTNAME=	bitstring-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/scott-griffiths/bitstring

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-bitarray${MODPY_FLAVOR}<3
TEST_DEPENDS=	devel/py-hypothesis${MODPY_FLAVOR} \
		devel/py-test-benchmark${MODPY_FLAVOR}

# require gfloat
MODPY_PYTEST_ARGS= --ignore tests/test_fp8.py \
		   --ignore tests/test_mxfp.py

.include <bsd.port.mk>
