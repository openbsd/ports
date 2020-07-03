# $OpenBSD: Makefile,v 1.9 2020/07/03 21:12:51 sthen Exp $

COMMENT =	py.test xdist plugin for distributed testing

DISTNAME =		pytest-xdist-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	1.16.0
MODPY_PI =		Yes
PKGNAME =		py-test-xdist-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =	devel

HOMEPAGE =	https://github.com/pytest-dev/pytest-xdist

# MIT
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR ?=

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	testing

BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-execnet${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-apipkg${MODPY_FLAVOR}
TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH}

.include <bsd.port.mk>
