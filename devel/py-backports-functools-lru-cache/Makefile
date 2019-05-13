# $OpenBSD: Makefile,v 1.5 2019/05/13 18:06:42 danj Exp $

COMMENT =		backport of the lru_cache from functools

MODPY_EGG_VERSION =	1.4
DISTNAME =		backports.functools_lru_cache-${MODPY_EGG_VERSION}
PKGNAME =		py-backports-functools-lru-cache-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		0

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-backports

BUILD_DEPENDS =		devel/py-setuptools_scm

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests

.include <bsd.port.mk>
