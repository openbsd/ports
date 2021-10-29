# $OpenBSD: Makefile,v 1.6 2021/10/29 15:38:43 sthen Exp $

COMMENT =	nose/pytest plugin to automatically rerun flaky tests

MODPY_EGG_VERSION = 3.5.3
DISTNAME =	flaky-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	3

CATEGORIES =	devel

HOMEPAGE =	https://github.com/box/flaky

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR =	python3

# missing deps
NO_TEST =		Yes

.include <bsd.port.mk>
