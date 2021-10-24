# $OpenBSD: Makefile,v 1.7 2021/10/24 09:28:48 sthen Exp $

COMMENT =		draw Python object reference graphs

MODPY_EGG_VERSION =	3.4.1
DISTNAME =		objgraph-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		devel

HOMEPAGE =		https://mg.pov.lt/objgraph/

# MIT
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python
MODPY_PI =		Yes

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		math/py-graphviz${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			math/graphviz

.include <bsd.port.mk>
