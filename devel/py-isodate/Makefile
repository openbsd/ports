# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:25 espie Exp $

PKG_ARCH =		*

COMMENT =		ISO 8601 date/time/duration parser and formater

MODPY_EGG_VERSION =	0.4.9
DISTNAME =		isodate-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://pypi.python.org/pypi/isodate/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=i/isodate/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
