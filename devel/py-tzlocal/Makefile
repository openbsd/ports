# $OpenBSD: Makefile,v 1.6 2019/04/28 20:51:38 sthen Exp $

COMMENT =		python tzinfo object for the local timezone

MODPY_EGG_VERSION =	1.3
DISTNAME =		tzlocal-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		devel

HOMEPAGE =		https://github.com/regebro/tzlocal

# CC0 1.0 Universal
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR?=

MODULES =		lang/python

RUN_DEPENDS =		devel/py-tz${MODPY_FLAVOR}

.include <bsd.port.mk>
