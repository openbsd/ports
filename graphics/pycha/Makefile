COMMENT =		Python charting module

MODPY_EGG_VERSION =	0.8.1
DISTNAME =		pycha-${MODPY_EGG_VERSION}
CATEGORIES =		graphics
REVISION =              4

# LGPL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tests/*.py

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-cairocffi${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			graphics/py-cairo${MODPY_FLAVOR}

pre-build:
	cd ${WRKBUILD} && 2to3 --no-diffs -w chavier pycha tests

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pycha
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pycha/color
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pycha
	${INSTALL_DATA} ${WRKSRC}/examples/*.* ${PREFIX}/share/examples/pycha/
	${INSTALL_DATA} ${WRKSRC}/examples/color/* ${PREFIX}/share/examples/pycha/color/
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/pycha/

.include <bsd.port.mk>
