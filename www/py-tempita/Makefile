# $OpenBSD: Makefile,v 1.10 2013/03/11 11:44:48 espie Exp $

COMMENT =	very small text templating language

MODPY_EGG_VERSION = 0.5.1
DISTNAME =	Tempita-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www

HOMEPAGE =	http://pythonpaste.org/tempita/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=T/Tempita/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS = devel/py-nose

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
