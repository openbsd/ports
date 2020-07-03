# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:50 sthen Exp $

COMMENT =		pytest plugin to abort hanging tests

MODPY_EGG_VERSION =	1.3.4

DISTNAME =		pytest-timeout-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/pytest-dev/pytest-timeout

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR}
TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/py-pexpect${MODPY_FLAVOR}

TEST_ENV +=		PYTHONPATH="."

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
