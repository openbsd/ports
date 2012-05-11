# $OpenBSD: Makefile,v 1.1 2012/05/11 23:29:30 edd Exp $

COMMENT =		Python bindings for lpsolve
DISTNAME =		lp_solve_${V}_Python_source
MODPY_EGG_VERSION =	5.5.0.9	# interface version differs from pkg version
PKGNAME =		py-lpsolve-${V}

LIB_DEPENDS +=		math/lpsolve/core
BUILD_DEPENDS +=	math/py-numpy
RUN_DEPENDS +=		math/py-numpy
MODULES =		lang/python

WRKDIST =		${WRKDIR}/lp_solve_${V_MAJOR}/extra/Python

WANTLIB +=		lpsolve55 ${MODPY_WANTLIB}

NUMPY_PATH =		${MODPY_LIBDIR}/site-packages/numpy/core/include
SUBST_VARS +=		NUMPY_PATH
pre-configure:
	${SUBST_CMD} ${WRKBUILD}/setup.py

NO_REGRESS =		Yes

.include <bsd.port.mk>
