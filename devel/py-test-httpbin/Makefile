COMMENT=	test your HTTP library against a local copy of httpbin

MODPY_DISTV=	2.1.0
DISTNAME=	pytest_httpbin-${MODPY_DISTV}
PKGNAME=	py-test-httpbin-${MODPY_DISTV}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/kevin1024/pytest-httpbin

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-six \
		devel/py-test \
		www/py-httpbin
TEST_DEPENDS=	www/py-requests

.include <bsd.port.mk>
