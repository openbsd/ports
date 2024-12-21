COMMENT =		QUIC and HTTP/3 implementation in Python

MODPY_DISTV =	1.2.0
DISTNAME =		aioquic-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		crypto

MODULES =		lang/python

HOMEPAGE =		https://github.com/python-hyper/h2

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		archivers/py-lsqpack \
			devel/py-certifi \
			security/py-cryptography \
			security/py-openssl \
			security/py-service_identity

TEST_DEPENDS =		devel/py-coverage

TEST_ENV +=		AIOQUIC_SKIP_TESTS=ed448

.include <bsd.port.mk>
