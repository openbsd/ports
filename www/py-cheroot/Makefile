# $OpenBSD: Makefile,v 1.3 2019/07/12 20:51:01 sthen Exp $

COMMENT = high-performance, pure-Python HTTP server used by CherryPy

MODPY_EGG_VERSION =	5.5.0
DISTNAME =		cheroot-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://github.com/cherrypy/cheroot

# custom, MIT-style
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR ?=

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
