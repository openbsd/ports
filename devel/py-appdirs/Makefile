# $OpenBSD: Makefile,v 1.2 2017/01/03 19:19:48 landry Exp $

COMMENT =		module for determining platform-specific dirs

MODPY_EGG_VERSION =	1.4.0
DISTNAME =		appdirs-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
