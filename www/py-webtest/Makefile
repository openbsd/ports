COMMENT=	helper to test wsgi applications

MODPY_DISTV=	3.0.3
DISTNAME=	webtest-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www devel

# https://github.com/Pylons/webtest
HOMEPAGE=	https://docs.pylonsproject.org/projects/webtest/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	www/py-waitress \
		www/py-beautifulsoup4 \
		www/py-webob

# also needs WSGIProxy2 and PasteDeploy
TEST_DEPENDS=	devel/py-test-cov \
		www/py-query

.include <bsd.port.mk>
