# $OpenBSD: Makefile,v 1.1.1.1 2009/03/30 00:00:37 fgsch Exp $

COMMENT =	helper to test wsgi applications

MODPY_EGG_VERSION = 1.1
DISTNAME =	WebTest-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www devel

HOMEPAGE =	http://pythonpaste.org/webtest/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=W/WebTest/}

MODULES =	lang/python

RUN_DEPENDS =	::www/py-webob
REGRESS_DEPENDS = ${RUN_DEPENDS} \
		  ::devel/py-dtopt \
		  ::devel/py-nose

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-webtest
	${INSTALL_DATA} ${WRKSRC}/docs/index.txt \
	    ${PREFIX}/share/doc/py-webtest

do-regress:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests lib tests

.include <bsd.port.mk>
