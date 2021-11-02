# $OpenBSD: Makefile,v 1.9 2021/11/02 00:02:40 sthen Exp $

COMMENT =		python helper for Semantic Versioning

MODPY_EGG_VERSION =	2.13.0
DISTNAME =		semver-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/k-bx/python-semver

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	test_semver.py

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-tox${MODPY_FLAVOR} \
			devel/py-virtualenv${MODPY_FLAVOR}

.include <bsd.port.mk>
