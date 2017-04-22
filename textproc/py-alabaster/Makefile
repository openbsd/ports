# $OpenBSD: Makefile,v 1.5 2017/04/22 20:05:06 shadchin Exp $

COMMENT =		configurable sidebar-enabled Sphinx theme

MODPY_EGG_VERSION =	0.7.10
DISTNAME =		alabaster-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
