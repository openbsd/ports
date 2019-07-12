# $OpenBSD: Makefile,v 1.7 2019/07/12 20:50:12 sthen Exp $

COMMENT =		markdown parser for Python

MODPY_EGG_VERSION =	0.7.4
DISTNAME =		mistune-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/lepture/mistune

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
