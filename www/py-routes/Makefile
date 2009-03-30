# $OpenBSD: Makefile,v 1.3 2009/03/30 00:06:26 fgsch Exp $

COMMENT =	re-implementation of the rails routes system

MODPY_EGG_VERSION = 1.10.3
DISTNAME =	Routes-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}p0

CATEGORIES =	www devel

HOMEPAGE =	http://routes.groovie.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=R/Routes/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

REGRESS_DEPENDS = ::devel/py-nose \
		  ::www/py-paste \
		  ::www/py-webtest

DOCS =		index.txt integration.txt manual.txt recipes.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-routes
	cd ${WRKSRC}/docs && ${INSTALL_DATA} ${DOCS} \
	  ${PREFIX}/share/doc/py-routes

do-regress:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
