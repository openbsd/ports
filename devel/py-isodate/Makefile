# $OpenBSD: Makefile,v 1.14 2017/01/03 19:19:48 landry Exp $

PKG_ARCH =		*

COMMENT =		ISO 8601 date/time/duration parser and formater

MODPY_EGG_VERSION =	0.5.4
DISTNAME =		isodate-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		devel


# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
