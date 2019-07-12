# $OpenBSD: Makefile,v 1.13 2019/07/12 20:51:03 sthen Exp $

COMMENT =	re-implementation of the rails routes system

MODPY_EGG_VERSION = 1.13
DISTNAME =	Routes-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	0

CATEGORIES =	www devel

HOMEPAGE =	http://routes.groovie.org/

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	www/py-repoze-lru
TEST_DEPENDS = devel/py-coverage \
		  devel/py-nose \
		  www/py-paste \
		  www/py-webtest

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-routes
	cd ${WRKSRC}/docs/_build/html && pax -rw * \
	  ${PREFIX}/share/doc/py-routes

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
