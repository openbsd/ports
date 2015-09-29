# $OpenBSD: Makefile,v 1.13 2015/09/29 10:53:17 sthen Exp $

COMMENT =	very small text templating language

MODPY_EGG_VERSION = 0.5.2
DISTNAME =	Tempita-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	0

CATEGORIES =	www

HOMEPAGE =	http://pythonpaste.org/tempita/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS = devel/py-nose

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
