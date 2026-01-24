COMMENT=	use requests to talk HTTP via a UNIX domain socket

MODPY_DISTV=	0.4.1
DISTNAME=	requests_unixsocket-${MODPY_DISTV}
PKGNAME=	py-requests-unixsocket-${MODPY_DISTV}

CATEGORIES=	www

# Apache-2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

RUN_DEPENDS=	www/py-requests
TEST_DEPENDS=	www/py-waitress

.include <bsd.port.mk>
