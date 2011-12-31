# $OpenBSD: Makefile,v 1.8 2011/12/31 15:08:35 fgsch Exp $

COMMENT =	helper to test wsgi applications

MODPY_EGG_VERSION = 1.3.3
DISTNAME =	WebTest-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www devel

HOMEPAGE =	http://webtest.pythonpaste.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=W/WebTest/}

MODULES =	lang/python

RUN_DEPENDS =	www/py-webob
REGRESS_DEPENDS = ${RUN_DEPENDS} \
		  devel/py-dtopt \
		  devel/py-nose

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-webtest
	cd ${WRKSRC}/docs/_build && pax -rw * ${PREFIX}/share/doc/py-webtest

do-regress:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests lib tests

.include <bsd.port.mk>
