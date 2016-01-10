# $OpenBSD: Makefile,v 1.1.1.1 2016/01/10 16:13:50 shadchin Exp $

COMMENT =		module for determining platform-specific dirs

MODPY_EGG_VERSION =	1.4.0
DISTNAME =		appdirs-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
