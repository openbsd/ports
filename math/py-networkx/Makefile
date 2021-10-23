# $OpenBSD: Makefile,v 1.6 2021/09/01 11:49:37 ajacoutot Exp $

COMMENT =		module for creating and manipulating graphs and networks

MODPY_EGG_VERSION =	2.6.2
DISTNAME =		networkx-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		math

HOMEPAGE =		https://networkx.github.io/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-decorator${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

.include <bsd.port.mk>
