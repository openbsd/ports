COMMENT =		QUIC and HTTP/3 implementation in Python

MODPY_EGG_VERSION =	1.2.0
DISTNAME =		aioquic-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		crypto

MODULES =		lang/python

HOMEPAGE =		https://github.com/python-hyper/h2

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		archivers/py-lsqpack${MODPY_FLAVOR} \
			devel/py-certifi${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR} \
			security/py-service_identity${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR}

TEST_ENV +=		AIOQUIC_SKIP_TESTS=ed448

.include <bsd.port.mk>
