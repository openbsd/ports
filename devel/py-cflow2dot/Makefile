COMMENT =		C call graphs using Cflow producing linked PDF

MODPY_EGG_VERSION =	0.2.3
DISTNAME =		pycflow2dot-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		3

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/cflow \
			graphics/py-dot${MODPY_FLAVOR} \
			math/py-networkx${MODPY_FLAVOR}
TEST_DEPENDS =		${BUILD_PKGPATH}

FLAVORS =	python3
FLAVOR =	python3

do-test:
	cd ${WRKSRC}/tests; cflow2dot -i basic_test.c -f pdf

.include <bsd.port.mk>
