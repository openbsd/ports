# $OpenBSD: Makefile,v 1.2 2017/02/23 12:30:54 shadchin Exp $

COMMENT =		provides an abstraction layer of various Qt bindings

MODPY_EGG_VERSION =	1.2.1
DISTNAME =		QtPy-${MODPY_EGG_VERSION}
PKGNAME =		py-qtpy-${MODPY_EGG_VERSION}
CATEGORIES =		x11

HOMEPAGE =		https://github.com/spyder-ide/qtpy

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
