# $OpenBSD: Makefile,v 1.3 2021/05/21 19:50:35 kmos Exp $

COMMENT =	core utilities for Python packages

MODPY_EGG_VERSION =	19.2

DISTNAME =	packaging-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

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
