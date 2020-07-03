# $OpenBSD: Makefile,v 1.56 2020/07/03 21:12:51 sthen Exp $

COMMENT =		Python API for dealing with timezones

MODPY_EGG_VERSION =	2020.1
DISTNAME =		pytz-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^py/py-/}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://pythonhosted.org/pytz/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS=		python3
FLAVOR?=

.include <bsd.port.mk>
