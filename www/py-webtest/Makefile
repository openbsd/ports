# $OpenBSD: Makefile,v 1.10 2015/04/02 14:21:18 jasper Exp $

COMMENT =	helper to test wsgi applications

MODPY_EGG_VERSION = 1.3.3
DISTNAME =	WebTest-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www devel

HOMEPAGE =	http://webtest.pythonpaste.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

RUN_DEPENDS =	www/py-webob
TEST_DEPENDS = ${RUN_DEPENDS} \
		  devel/py-dtopt \
		  devel/py-nose

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-webtest
	cd ${WRKSRC}/docs/_build && pax -rw * ${PREFIX}/share/doc/py-webtest

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests lib tests

.include <bsd.port.mk>
