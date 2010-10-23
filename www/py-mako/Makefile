# $OpenBSD: Makefile,v 1.4 2010/10/23 21:44:02 jasper Exp $

COMMENT =	super-fast templating language

MODPY_EGG_VERSION = 0.3.4
DISTNAME =	Mako-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www

HOMEPAGE =	http://www.makotemplates.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}/downloads/

MODULES =	lang/python

RUN_DEPENDS =	::textproc/py-MarkupSafe \
		::www/py-beaker
REGRESS_DEPENDS = ${RUN_DEPENDS} \
		  :py-nose->=0.11:devel/py-nose

MODPY_SETUPTOOLS = Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-mako
	cd ${WRKSRC}/doc && pax -rw *.html *.css ${PREFIX}/share/doc/py-mako

.include <bsd.port.mk>
