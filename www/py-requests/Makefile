COMMENT=	elegant and simple HTTP library for Python

# 2.33 expected to move to hatchling
MODPY_DISTV=	2.32.2
# XXX 2.32.3 has problems: https://github.com/psf/requests/issues/6730
DISTNAME=	requests-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	www

HOMEPAGE=	https://requests.readthedocs.io/

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	archivers/py-brotli \
		devel/py-certifi \
		net/py-idna \
		textproc/py-charset-normalizer \
		www/py-urllib3

TEST_DEPENDS=	devel/py-test-cov \
		devel/py-test-mock \
		devel/py-test-httpbin \
		devel/py-test-xdist \
		net/py-socks \
		security/py-trustme \
		www/py-urllib3

.include <bsd.port.mk>
