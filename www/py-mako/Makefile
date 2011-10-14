# $OpenBSD: Makefile,v 1.10 2011/10/14 05:25:03 rpointel Exp $

COMMENT =	super-fast templating language

MODPY_EGG_VERSION = 0.5.0
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

RUN_DEPENDS =	textproc/py-MarkupSafe>=0.9.2 \
		www/py-beaker>=1.1
REGRESS_DEPENDS = devel/py-nose>=0.11 \
		  devel/py-babel \
		  ${RUN_DEPENDS}

MODPY_SETUPTOOLS = Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-mako
	cd ${WRKSRC}/doc && pax -rw *.html _static ${PREFIX}/share/doc/py-mako

.include <bsd.port.mk>
