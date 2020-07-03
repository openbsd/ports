# $OpenBSD: Makefile,v 1.2 2020/07/03 21:13:11 sthen Exp $

COMMENT =	core utilities for Python packages

MODPY_EGG_VERSION =	19.2

DISTNAME =	packaging-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

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
