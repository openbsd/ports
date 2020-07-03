# $OpenBSD: Makefile,v 1.4 2020/07/03 21:12:44 sthen Exp $

COMMENT =	nose/pytest plugin to automatically rerun flaky tests

MODPY_EGG_VERSION = 3.5.3
DISTNAME =	flaky-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel

HOMEPAGE =	https://github.com/box/flaky

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

# missing deps
NO_TEST =		Yes

.include <bsd.port.mk>
