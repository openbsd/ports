# $OpenBSD: Makefile,v 1.6 2021/05/21 19:50:27 kmos Exp $

COMMENT =		draw Python object reference graphs

MODPY_EGG_VERSION =	3.4.1
DISTNAME =		objgraph-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		devel

HOMEPAGE =		https://mg.pov.lt/objgraph/

# MIT
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR ?=

MODULES =		lang/python
MODPY_PI =		Yes

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		math/py-graphviz${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			math/graphviz

.include <bsd.port.mk>
