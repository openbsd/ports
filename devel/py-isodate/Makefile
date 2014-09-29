# $OpenBSD: Makefile,v 1.7 2014/09/29 07:02:02 jasper Exp $

PKG_ARCH =		*

COMMENT =		ISO 8601 date/time/duration parser and formater

MODPY_EGG_VERSION =	0.5.0
DISTNAME =		isodate-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		http://pypi.python.org/pypi/isodate/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=i/isodate/}

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
