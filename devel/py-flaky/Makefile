# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:33 sthen Exp $

COMMENT =	nose/pytest plugin to automatically rerun flaky tests

MODPY_EGG_VERSION = 3.5.3
DISTNAME =	flaky-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/box/flaky

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

# missing deps
NO_TEST =		Yes

.include <bsd.port.mk>
