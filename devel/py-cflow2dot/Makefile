COMMENT =		C call graphs using Cflow producing linked PDF

MODPY_EGG_VERSION =	0.2.2
DISTNAME =		pycflow2dot-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/johnyf/pycflow2dot

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/cflow \
			graphics/py-dot${MODPY_FLAVOR} \
			math/py-networkx${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
