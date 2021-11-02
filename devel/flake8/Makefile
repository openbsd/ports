# $OpenBSD: Makefile,v 1.25 2021/11/02 00:00:23 sthen Exp $

COMMENT =		modular python code checker wrapping pep8 and pyflakes

MODPY_EGG_VERSION =	3.9.2
DISTNAME =		flake8-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://gitlab.com/pycqa/flake8

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests

RUN_DEPENDS =		devel/py-codestyle${MODPY_FLAVOR}>=2.5.0 \
			devel/py-mccabe${MODPY_FLAVOR} \
			devel/pyflakes${MODPY_FLAVOR}>=2.1.0

BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR}

TEST_ENV =		PYTHONPATH=src

.include <bsd.port.mk>
