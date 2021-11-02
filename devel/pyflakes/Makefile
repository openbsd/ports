# $OpenBSD: Makefile,v 1.25 2021/11/02 00:01:12 sthen Exp $

COMMENT =		passive checker of Python programs

MODPY_EGG_VERSION =	2.3.1
DISTNAME =		pyflakes-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/PyCQA/pyflakes

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
TEST_ENV =		PY_IGNORE_IMPORTMISMATCH=1

FLAVORS =		python3
FLAVOR =		python3

pre-test:
	ln -fs ../bin ${WRKSRC}/lib/

.include <bsd.port.mk>
