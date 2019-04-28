# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:35 sthen Exp $

COMMENT =		draw Python object reference graphs

MODPY_EGG_VERSION =	3.4.1
DISTNAME =		objgraph-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://mg.pov.lt/objgraph/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =		python3
FLAVOR ?=

MODULES =		lang/python
MODPY_PI =		Yes

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		math/py-graphviz${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-mock${MODPY_FLAVOR} \
			math/graphviz

.include <bsd.port.mk>
