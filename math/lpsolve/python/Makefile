COMMENT =		Python bindings for lpsolve
DISTNAME =		lp_solve_${V}_Python_source
# interface version differs from pkg version
MODPY_EGG_VERSION =	5.5.0.9
PKGNAME =		py-lpsolve-${V}
REVISION =		2

LIB_DEPENDS +=		math/lpsolve/core
BUILD_DEPENDS +=	math/py2-numpy
RUN_DEPENDS +=		math/py2-numpy
MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

WRKDIST =		${WRKDIR}/lp_solve_${V_MAJOR}/extra/Python

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += lpsolve55 pthread

NUMPY_PATH =		${MODPY_LIBDIR}/site-packages/numpy/core/include
SUBST_VARS +=		NUMPY_PATH
pre-configure:
	${SUBST_CMD} ${WRKBUILD}/setup.py

NO_TEST =		Yes

.include <bsd.port.mk>
