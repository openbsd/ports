# $OpenBSD: Makefile,v 1.19 2021/10/24 09:28:53 sthen Exp $

COMMENT =	very small text templating language

MODPY_EGG_VERSION = 0.5.2
DISTNAME =	Tempita-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	5

CATEGORIES =	www

HOMEPAGE =	http://pythonpaste.org/tempita/

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS = devel/py-nose${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
