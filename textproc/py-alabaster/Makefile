# $OpenBSD: Makefile,v 1.7 2019/05/13 19:03:53 danj Exp $

COMMENT =		configurable sidebar-enabled Sphinx theme

MODPY_EGG_VERSION =	0.7.10
DISTNAME =		alabaster-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		textproc

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
