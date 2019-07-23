# $OpenBSD: Makefile,v 1.1.1.1 2019/07/23 19:22:23 jasper Exp $

COMMENT =		efficient SMT solver library (angr fork)

ANGR_PYTHON_MODULE =	z3-solver
# devel/angr/py-claripy requires this exact version, newer 4.8.5.0 breaks it.
MODPY_EGG_VERSION =	4.5.1.0.post2

CATEGORIES +=		math

HOMEPAGE =		https://github.com/angr/angr-z3

WANTLIB += 		${COMPILER_LIBCXX} c m

.include <bsd.port.mk>
