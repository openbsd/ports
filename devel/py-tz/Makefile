# $OpenBSD: Makefile,v 1.63 2022/03/10 10:47:09 sthen Exp $

COMMENT =		Python API for dealing with timezones

MODPY_EGG_VERSION =	2021.3
DISTNAME =		pytz-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^py/py-/}
CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		https://pythonhosted.org/pytz/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS=		python3
FLAVOR=			python3

.include <bsd.port.mk>
