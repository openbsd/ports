# $OpenBSD: Makefile,v 1.7 2019/11/18 23:15:18 kmos Exp $

COMMENT =		test your HTTP library against a local copy of httpbin

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		pytest-httpbin-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/kevin1024/pytest-httpbin

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			www/py-httpbin${MODPY_FLAVOR}
TEST_DEPENDS =		www/py-requests${MODPY_FLAVOR}

# Tests aren't included in pypi tarball for now
# Pull request sent 
# https://github.com/kevin1024/pytest-httpbin/pull/56

.include <bsd.port.mk>
