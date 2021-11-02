# $OpenBSD: Makefile,v 1.9 2021/11/02 00:02:59 sthen Exp $

COMMENT =		windowing and multimedia library for Python

MODPY_EGG_VERSION =	1.4.11
DISTNAME =		pyglet-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
EXTRACT_SUFX =		.zip
REVISION =		1

CATEGORIES =		x11 multimedia

HOMEPAGE =		http://www.pyglet.org

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

.include <bsd.port.mk>
