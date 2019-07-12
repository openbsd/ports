# $OpenBSD: Makefile,v 1.6 2019/07/12 20:46:23 sthen Exp $

MODPY_EGG_VERSION =	0.9.2
COMMENT =	sprite animation module for pygame
DISTNAME =	Pyganim-${MODPY_EGG_VERSION}
PKGNAME =	pyganim-${MODPY_EGG_VERSION}
REVISION =	0
EXTRACT_SUFX =	.zip
CATEGORIES =	games x11

HOMEPAGE =	http://inventwithpython.com/pyganim/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =	Yes
MODPY_PI_DIR =	P/Pyganim

BUILD_DEPENDS =	devel/pygame

RUN_DEPENDS =	devel/pygame

NO_TEST =	Yes

.include <bsd.port.mk>
