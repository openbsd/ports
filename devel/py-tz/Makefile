# $OpenBSD: Makefile,v 1.60 2021/05/21 19:50:30 kmos Exp $

COMMENT =		Python API for dealing with timezones

MODPY_EGG_VERSION =	2021.1
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
