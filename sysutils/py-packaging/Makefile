# $OpenBSD: Makefile,v 1.7 2021/11/18 20:08:00 sthen Exp $

COMMENT =	core utilities for Python packages

# if moving to >=21.0 this needs splitting off to py2-packaging
# (py2-setuptools requires it)
MODPY_EGG_VERSION =	20.9

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

RUN_DEPENDS =		devel/py-parsing${MODPY_FLAVOR}>=2.0.2

TEST_DEPENDS =		devel/py-pretend${MODPY_FLAVOR}
MODPY_PYTEST =		Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
