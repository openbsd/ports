COMMENT=	construction, analysis and modification of binary data

MODPY_DISTV=	4.3.0
DISTNAME=	bitstring-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISIOM=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/scott-griffiths/bitstring

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-bitarray
TEST_DEPENDS=	devel/py-hypothesis \
		devel/py-test-benchmark

# require gfloat
MODPY_PYTEST_ARGS= --ignore tests/test_fp8.py \
		   --ignore tests/test_mxfp.py

.include <bsd.port.mk>
