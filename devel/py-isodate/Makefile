# $OpenBSD: Makefile,v 1.11 2015/09/29 10:51:54 sthen Exp $

PKG_ARCH =		*

COMMENT =		ISO 8601 date/time/duration parser and formater

MODPY_EGG_VERSION =	0.5.4
DISTNAME =		isodate-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://pypi.python.org/pypi/isodate/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
