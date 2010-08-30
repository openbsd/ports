# $OpenBSD: Makefile,v 1.2 2010/08/30 22:02:34 sthen Exp $

COMMENT =	super-fast templating language

MODPY_EGG_VERSION = 0.2.5
DISTNAME =	Mako-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	0

CATEGORIES =	www

HOMEPAGE =	http://www.makotemplates.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}downloads/

MODULES =	lang/python

RUN_DEPENDS =	::www/py-beaker
REGRESS_DEPENDS = ${RUN_DEPENDS} \
		  ::www/py-webtest

MODPY_SETUPTOOLS = Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-mako
	cd ${WRKSRC}/doc && pax -rw *.html *.css ${PREFIX}/share/doc/py-mako

do-regress:
	cd ${WRKSRC} && env PYTHONPATH=lib ${MODPY_BIN} test/alltests.py

.include <bsd.port.mk>
