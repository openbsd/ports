# $OpenBSD: Makefile,v 1.2 2021/11/02 00:02:36 sthen Exp $

COMMENT =		brace expanding library

MODPY_EGG_VERSION =	2.1.1
DISTNAME =		bracex-${MODPY_EGG_VERSION}
PKGNAME =		py-bracex-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		textproc

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

.include <bsd.port.mk>
