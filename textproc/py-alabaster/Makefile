# $OpenBSD: Makefile,v 1.4 2017/01/03 19:27:51 landry Exp $

COMMENT =		configurable sidebar-enabled Sphinx theme

MODPY_EGG_VERSION =	0.7.9
DISTNAME =		alabaster-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
