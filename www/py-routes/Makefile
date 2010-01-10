# $OpenBSD: Makefile,v 1.4 2010/01/10 12:35:28 fgsch Exp $

COMMENT =	re-implementation of the rails routes system

MODPY_EGG_VERSION = 1.11
DISTNAME =	Routes-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

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

REGRESS_DEPENDS = ::devel/py-coverage \
		  ::devel/py-nose \
		  ::www/py-paste \
		  ::www/py-webtest

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-routes
	cd ${WRKSRC}/docs/_build/html && pax -rw * \
	  ${PREFIX}/share/doc/py-routes

do-regress:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
