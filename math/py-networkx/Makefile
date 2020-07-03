# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:57 sthen Exp $

COMMENT =		module for creating and manipulating graphs and networks

MODPY_EGG_VERSION =	2.3
DISTNAME =		networkx-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		math

HOMEPAGE =		https://networkx.github.io/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX =		.zip

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS=		python3
FLAVOR=			python3

RUN_DEPENDS =		devel/py-decorator${MODPY_FLAVOR}>=4.3.0

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

.include <bsd.port.mk>
