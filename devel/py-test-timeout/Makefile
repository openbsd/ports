# $OpenBSD: Makefile,v 1.2 2020/02/17 14:18:40 kmos Exp $

COMMENT =		pytest plugin to abort hanging tests

MODPY_EGG_VERSION =	1.3.4

DISTNAME =		pytest-timeout-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}

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
