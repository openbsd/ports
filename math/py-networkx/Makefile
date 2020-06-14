# $OpenBSD: Makefile,v 1.2 2020/06/14 10:13:55 ajacoutot Exp $

COMMENT =		module for creating and manipulating graphs and networks

MODPY_EGG_VERSION =	2.3
DISTNAME =		networkx-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
