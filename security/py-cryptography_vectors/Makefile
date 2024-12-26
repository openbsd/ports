COMMENT=	test vectors for py-cryptography

MODPY_DISTV=	44.0.0
DISTNAME=	cryptography_vectors-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	security

HOMEPAGE=	https://cryptography.io/

# dual: BSD or Apache 2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes
MODPY_PI_DIR=	c/cryptography-vectors
NO_TEST=	Yes

.include <bsd.port.mk>
