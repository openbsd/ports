COMMENT =	help visualize profiling data collected with the cProfile

MODPY_DISTV =	1.4.5
DISTNAME =	pyprof2calltree-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	8

CATEGORIES =	devel

HOMEPAGE =	https://github.com/pwaller/pyprof2calltree

# BSD-derived
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_PYBUILD =		setuptools

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}pyprof2calltree
	${INSTALL_DATA} ${WRKSRC}/README.rst \
		${PREFIX}/share/doc/${MODPY_PY_PREFIX}pyprof2calltree

.include <bsd.port.mk>
