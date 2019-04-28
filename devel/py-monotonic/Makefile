# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:34 sthen Exp $

COMMENT =		implementation of time.monotonic()

MODPY_EGG_VERSION =	1.3
DISTNAME =		monotonic-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/atdt/monotonic

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
