# $OpenBSD: Makefile,v 1.3 2015/09/29 10:52:12 sthen Exp $

MODPY_EGG_VERSION =	0.9.0
COMMENT =	sprite animation module for pygame
DISTNAME =	Pyganim-${MODPY_EGG_VERSION}
PKGNAME =	pyganim-${MODPY_EGG_VERSION}
EXTRACT_SUFX =	.zip
CATEGORIES =	games x11
REVISION =	1

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
