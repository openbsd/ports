# $OpenBSD: Makefile,v 1.5 2021/11/02 00:01:03 sthen Exp $

COMMENT =		pytest plugin to abort hanging tests

MODPY_EGG_VERSION =	1.4.2

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
TEST_DEPENDS =		devel/py-pexpect${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

TEST_ENV +=		PYTHONPATH="."

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
