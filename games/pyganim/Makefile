# $OpenBSD: Makefile,v 1.2 2015/08/25 13:18:26 sthen Exp $

MODPY_EGG_VERSION =	0.9.0
COMMENT =	sprite animation module for pygame
DISTNAME =	Pyganim-${MODPY_EGG_VERSION}
PKGNAME =	pyganim-${MODPY_EGG_VERSION}
EXTRACT_SUFX =	.zip
CATEGORIES =	games x11
REVISION =	0

HOMEPAGE =	http://inventwithpython.com/pyganim/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =	Yes
MODPY_PI_DIR =	P/Pyganim

BUILD_DEPENDS =	devel/pygame

RUN_DEPENDS =	devel/pygame

NO_TEST =	Yes

.include <bsd.port.mk>
