# $OpenBSD: Makefile,v 1.10 2013/03/11 11:44:48 espie Exp $

COMMENT =	re-implementation of the rails routes system

MODPY_EGG_VERSION = 1.13
DISTNAME =	Routes-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www devel

HOMEPAGE =	http://routes.groovie.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=R/Routes/}

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
