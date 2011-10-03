# $OpenBSD: Makefile,v 1.9 2011/10/03 16:42:03 fgsch Exp $

COMMENT =	very small text templating language

MODPY_EGG_VERSION = 0.5.1
DISTNAME =	Tempita-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www

HOMEPAGE =	http://pythonpaste.org/tempita/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=T/Tempita/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

REGRESS_DEPENDS = devel/py-nose

do-regress:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
