COMMENT =		Python charting module

MODPY_DISTV =	0.8.1
DISTNAME =		pycha-${MODPY_DISTV}
CATEGORIES =		graphics
REVISION =              5

# LGPL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tests/*.py

RUN_DEPENDS =		devel/py-cairocffi \
			devel/py-six \
			graphics/py-cairo

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
