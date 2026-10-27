COMMENT=	Python interface to cURL library

MODPY_DISTV=	7.49.0
DISTNAME=	pycurl-${MODPY_DISTV}
PKGNAME=	py-curl-${MODPY_DISTV}
CATEGORIES=	net

HOMEPAGE=	http://pycurl.io/

# dual: LGPL or MIT-like
PERMIT_PACKAGE=	Yes

WANTLIB += crypto curl ssl

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

LIB_DEPENDS=	net/curl

TEST_DEPENDS=	${BUILD_PKGPATH} \
		devel/py-flaky \
		devel/py-test-run-parallel \
		net/py-websockets \
		www/py-bottle \
		www/py-flask

# SIGILL
MODPY_PYTEST_ARGS= -k 'not test_long_chain_of_handles_does_not_exhaust_the_stack'

.include <bsd.port.mk>
