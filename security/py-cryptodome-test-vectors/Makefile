COMMENT=	test vectors for pycryptodome

MODPY_DISTV=	1.0.22
DISTNAME=	pycryptodome_test_vectors-${MODPY_DISTV}
PKGNAME=	py-cryptodome-test-vectors-${MODPY_DISTV}
#EXTRACT_SUFX=	.zip

CATEGORIES=	security

HOMEPAGE=	https://www.pycryptodome.org

# BSD + Public Domain
PERMIT_PACKAGE=	Yes

WANTLIB +=	pthread
MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
NO_TEST=	Yes

.include <bsd.port.mk>
