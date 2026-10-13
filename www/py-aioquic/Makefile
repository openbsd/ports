COMMENT=	QUIC and HTTP/3 implementation in Python

MODPY_DISTV=	1.6.1
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

RUN_DEPENDS=	devel/py-certifi \
		security/py-cryptography \
		archivers/py-lsqpack<2 \
		security/py-openssl \
		security/py-service_identity

TEST_DEPENDS=	devel/py-coverage

MODPY_PYTEST_ARGS= -v -n ${MAKE_JOBS}
TEST_ENV +=	AIOQUIC_SKIP_TESTS=ed448

.include <bsd.port.mk>
