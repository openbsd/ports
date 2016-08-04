# $OpenBSD: Makefile,v 1.3 2016/08/04 11:47:58 shadchin Exp $

COMMENT =		configurable sidebar-enabled Sphinx theme

MODPY_EGG_VERSION =	0.7.9
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
