COMMENT=	test vectors for py-cryptography

MODPY_DISTV=	46.0.1
DISTNAME=	cryptography_vectors-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	security

HOMEPAGE=	https://cryptography.io/

# dual: BSD or Apache 2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

NO_TEST=	Yes

# the sdist has 0 timestamps, possibly due to generation with uv_build,
# which aren't supported by the zip format, so result in wheel creation
# failing
post-extract:
	find ${WRKSRC} -exec touch {} +

.include <bsd.port.mk>
