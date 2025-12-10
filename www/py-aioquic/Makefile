COMMENT=	QUIC and HTTP/3 implementation in Python

MODPY_DISTV=	1.3.0
DISTNAME=	aioquic-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

HOMEPAGE=	https://github.com/python-hyper/h2

CATEGORIES=	www

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	crypto

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	archivers/py-lsqpack \
		devel/py-certifi \
		security/py-cryptography \
		security/py-openssl \
		security/py-service_identity

TEST_DEPENDS=	devel/py-coverage

MODPY_PYTEST_ARGS= -v
TEST_ENV +=	AIOQUIC_SKIP_TESTS=ed448

.include <bsd.port.mk>
