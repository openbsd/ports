# $OpenBSD: Makefile,v 1.1.1.1 2018/08/23 05:49:01 landry Exp $

COMMENT =	parser for the Open Financial Exchange file format

MODPY_EGG_VERSION = 0.19
DISTNAME =	ofxparse-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	textproc

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

RUN_DEPENDS +=		devel/py-six${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR}

TEST_DEPENDS +=		${RUN_DEPENDS}

.include <bsd.port.mk>
