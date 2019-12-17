# $OpenBSD: Makefile,v 1.5 2019/12/17 14:11:34 kmos Exp $

COMMENT =		python helper for Semantic Versioning

MODPY_EGG_VERSION =	2.9.0
DISTNAME =		semver-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/k-bx/python-semver

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	test_semver.py
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-tox${MODPY_FLAVOR} \
			devel/py-virtualenv${MODPY_FLAVOR}

.include <bsd.port.mk>
