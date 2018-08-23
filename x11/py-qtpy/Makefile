# $OpenBSD: Makefile,v 1.3 2018/08/23 20:27:17 sthen Exp $

COMMENT =		provides an abstraction layer of various Qt bindings

MODPY_EGG_VERSION =	1.4.2
DISTNAME =		QtPy-${MODPY_EGG_VERSION}
PKGNAME =		py-qtpy-${MODPY_EGG_VERSION}
CATEGORIES =		x11

HOMEPAGE =		https://github.com/spyder-ide/qtpy

MAINTAINER =		Elias M. Mariani <marianielias@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
