# $OpenBSD: Makefile,v 1.4 2021/06/05 08:48:30 sthen Exp $

COMMENT =	core utilities for Python packages

MODPY_EGG_VERSION =	20.9

DISTNAME =	packaging-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/pypa/packaging

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-parsing${MODPY_FLAVOR}>=2.0.2 \
			devel/py-six${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-pretend${MODPY_FLAVOR}
MODPY_PYTEST =		Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
