COMMENT=	identification and authentication framework for WSGI

MODPY_DISTV=	3.2.0
DISTNAME=	repoze_who-${MODPY_DISTV}
PKGNAME=	py-repoze-who-${MODPY_DISTV}

CATEGORIES=	www devel

# BSD-derived
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-zopeinterface \
		www/py-legacy-cgi \
		www/py-webob

.include <bsd.port.mk>
