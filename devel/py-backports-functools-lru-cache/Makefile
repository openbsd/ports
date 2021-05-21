# $OpenBSD: Makefile,v 1.8 2021/05/21 19:50:23 kmos Exp $

COMMENT =		backport of the lru_cache from functools

MODPY_EGG_VERSION =	1.4
DISTNAME =		backports.functools_lru_cache-${MODPY_EGG_VERSION}
PKGNAME =		py-backports-functools-lru-cache-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		1

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

RUN_DEPENDS =		devel/py-backports

BUILD_DEPENDS =		devel/py-setuptools_scm

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests

.include <bsd.port.mk>
