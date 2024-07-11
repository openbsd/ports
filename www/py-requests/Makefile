COMMENT=	elegant and simple HTTP library for Python

# 2.33 expected to move to hatchling
MODPY_EGG_VERSION=	2.32.2
# XXX 2.32.3 has problems: https://github.com/psf/requests/issues/6730
DISTNAME=	requests-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

HOMEPAGE=	https://requests.readthedocs.io/

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	archivers/py-brotli${MODPY_FLAVOR} \
		devel/py-certifi${MODPY_FLAVOR} \
		net/py-idna${MODPY_FLAVOR} \
		textproc/py-charset-normalizer${MODPY_FLAVOR} \
		www/py-urllib3${MODPY_FLAVOR}

TEST_DEPENDS=	devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-test-mock${MODPY_FLAVOR} \
		devel/py-test-httpbin${MODPY_FLAVOR} \
		devel/py-test-xdist${MODPY_FLAVOR} \
		net/py-socks${MODPY_FLAVOR} \
		security/py-trustme${MODPY_FLAVOR} \
		www/py-urllib3${MODPY_FLAVOR}

.include <bsd.port.mk>
