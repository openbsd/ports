# $OpenBSD: Makefile,v 1.9 2020/07/03 21:13:13 sthen Exp $

COMMENT =		configurable sidebar-enabled Sphinx theme

MODPY_EGG_VERSION =	0.7.10
DISTNAME =		alabaster-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		textproc

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
