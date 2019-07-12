# $OpenBSD: Makefile,v 1.17 2019/07/12 20:44:08 sthen Exp $

COMMENT =		modular python code checker wrapping pep8 and pyflakes

MODPY_EGG_VERSION =	3.5.0
DISTNAME =		flake8-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://gitlab.com/pycqa/flake8

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-codestyle${MODPY_FLAVOR} \
			devel/py-mccabe${MODPY_FLAVOR} \
			devel/pyflakes${MODPY_FLAVOR}

BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

TEST_ENV +=		PYTHONPATH=src

.include <bsd.port.mk>
