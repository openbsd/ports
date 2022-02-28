# $OpenBSD: Makefile,v 1.41 2022/02/28 11:00:42 bket Exp $

COMMENT =		cross-project testing tool for Python

MODPY_EGG_VERSION =	6.2.5
DISTNAME =		pytest-${MODPY_EGG_VERSION}
PKGNAME =		py-test-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://docs.pytest.org/en/latest/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST_ARGS =	testing

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR}>=17.4.0 \
			devel/py-pluggy${MODPY_FLAVOR}>=0.9 \
			devel/py-py${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-iniconfig${MODPY_FLAVOR} \
			textproc/py-toml${MODPY_FLAVOR}

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/py-argcomplete${MODPY_FLAVOR} \
			devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR} \
			shells/bash \
			textproc/py-xmlschema${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
