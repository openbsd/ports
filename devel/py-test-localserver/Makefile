COMMENT=	py.test plugin to test server connections locally

MODPY_DISTV=	0.8.1
DISTNAME=	pytest-localserver-${MODPY_DISTV}
PKGNAME=	py-test-localserver-${MODPY_DISTV}
REVISION=	0

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
