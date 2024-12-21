COMMENT=	test vectors for py-cryptography

MODPY_DISTV=	42.0.7
DISTNAME=	cryptography_vectors-${MODPY_DISTV}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}
CATEGORIES=	security
REVISION=	0

HOMEPAGE=	https://cryptography.io/

# dual: BSD or Apache 2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes
MODPY_PI_DIR=	c/cryptography-vectors
NO_TEST=	Yes

.include <bsd.port.mk>
