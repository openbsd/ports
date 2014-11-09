# $OpenBSD: Makefile,v 1.8 2014/11/09 13:19:36 benoit Exp $

PKG_ARCH =		*

COMMENT =		ISO 8601 date/time/duration parser and formater

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		isodate-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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
