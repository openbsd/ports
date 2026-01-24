COMMENT=	small addon for python-requests HTTP library

MODPY_DISTV=	1.0.2
DISTNAME=	requests_futures-${MODPY_DISTV}
PKGNAME=	py-requests-futures-${MODPY_DISTV}

CATEGORIES=	www

HOMEPAGE=	https://github.com/ross/requests-futures

# APLv2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	www/py-requests
TEST_DEPENDS=	devel/py-greenlet \
		devel/py-test-cov \
		devel/py-test-httpbin \
		www/py-werkzeug

.include <bsd.port.mk>
