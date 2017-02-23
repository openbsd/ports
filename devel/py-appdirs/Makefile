# $OpenBSD: Makefile,v 1.3 2017/02/23 14:36:07 shadchin Exp $

COMMENT =		module for determining platform-specific dirs

MODPY_EGG_VERSION =	1.4.1
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
