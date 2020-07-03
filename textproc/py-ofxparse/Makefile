# $OpenBSD: Makefile,v 1.7 2020/07/03 21:13:15 sthen Exp $

COMMENT =	parser for the Open Financial Exchange file format

MODPY_EGG_VERSION = 0.20
DISTNAME =	ofxparse-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	textproc

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# MIT
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =	python3
FLAVOR ?=

RUN_DEPENDS +=		devel/py-six${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR}

.include <bsd.port.mk>
