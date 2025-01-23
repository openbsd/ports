COMMENT=	identification and authentication framework for WSGI

MODPY_DISTV=	3.0.0
DISTNAME=	repoze.who-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/./-/}

CATEGORIES=	www devel

# BSD-derived
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-zopeinterface \
		www/py-webob

.include <bsd.port.mk>
