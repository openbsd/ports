# $OpenBSD: Makefile,v 1.12 2020/07/03 21:12:50 sthen Exp $

COMMENT =		invoke py.test as distutils command

MODPY_EGG_VERSION =	2.11.1
DISTNAME =		pytest-runner-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		2

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
