COMMENT=	py.test plugin to test server connections locally

MODPY_DISTV=	0.10.0
DISTNAME=	pytest_localserver-${MODPY_DISTV}
PKGNAME=	py-test-localserver-${MODPY_DISTV}

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	devel/py-test \
		www/py-werkzeug

TEST_DEPENDS=	www/py-requests \
		www/py-werkzeug

.include <bsd.port.mk>
