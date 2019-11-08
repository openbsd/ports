# $OpenBSD: Makefile,v 1.19 2019/11/08 23:34:33 ajacoutot Exp $

COMMENT =		modular python code checker wrapping pep8 and pyflakes

MODPY_EGG_VERSION =	3.7.9
DISTNAME =		flake8-${MODPY_EGG_VERSION}

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

RUN_DEPENDS =		devel/py-codestyle${MODPY_FLAVOR}>=2.5.0 \
			devel/py-entrypoints${MODPY_FLAVOR}>=0.3 \
			devel/py-mccabe${MODPY_FLAVOR} \
			devel/pyflakes${MODPY_FLAVOR}>=2.1.0

BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

TEST_ENV +=		PYTHONPATH=src

.include <bsd.port.mk>
