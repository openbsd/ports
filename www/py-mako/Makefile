# $OpenBSD: Makefile,v 1.11 2013/03/11 11:44:48 espie Exp $

COMMENT =	super-fast templating language

MODPY_EGG_VERSION = 0.5.0
DISTNAME =	Mako-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www

HOMEPAGE =	http://www.makotemplates.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}/downloads/

MODULES =	lang/python

RUN_DEPENDS =	textproc/py-MarkupSafe>=0.9.2 \
		www/py-beaker>=1.1
TEST_DEPENDS = devel/py-nose>=0.11 \
		  devel/py-babel \
		  ${RUN_DEPENDS}

MODPY_SETUPTOOLS = Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-mako
	cd ${WRKSRC}/doc && pax -rw *.html _static ${PREFIX}/share/doc/py-mako

.include <bsd.port.mk>
