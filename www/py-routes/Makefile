# $OpenBSD: Makefile,v 1.2 2009/03/22 17:40:59 fgsch Exp $

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

MASTER_SITES =	${MASTER_SITE_PYPI:=/R/Routes/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

NO_REGRESS =	Yes

DOCS =		index.txt integration.txt manual.txt recipes.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-routes
	cd ${WRKSRC}/docs && ${INSTALL_DATA} ${DOCS} \
	  ${PREFIX}/share/doc/py-routes

.include <bsd.port.mk>
