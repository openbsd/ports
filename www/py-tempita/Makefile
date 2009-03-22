# $OpenBSD: Makefile,v 1.2 2009/03/22 17:40:59 fgsch Exp $

COMMENT =	very small text templating language

MODPY_EGG_VERSION = 0.3

DISTNAME =	Tempita-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}p0

CATEGORIES =	www

HOMEPAGE =	http://pythonpaste.org/tempita/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=/T/Tempita/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

REGRESS_DEPENDS = ::devel/py-nose

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-tempita
	${INSTALL_DATA} ${WRKSRC}/docs/index.txt \
	    ${PREFIX}/share/doc/py-tempita

do-regress:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests lib tests

.include <bsd.port.mk>
