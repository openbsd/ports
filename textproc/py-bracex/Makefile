# $OpenBSD: Makefile,v 1.1.1.1 2021/02/20 08:22:17 ajacoutot Exp $

COMMENT =		brace expanding library

MODPY_EGG_VERSION =	2.1.1
DISTNAME =		bracex-${MODPY_EGG_VERSION}
PKGNAME =		py-bracex-${MODPY_EGG_VERSION}

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
