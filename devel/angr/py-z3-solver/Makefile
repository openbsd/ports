# $OpenBSD: Makefile,v 1.11 2021/01/17 19:50:09 jasper Exp $

COMMENT =		efficient SMT solver library (angr fork)

ANGR_PYTHON_MODULE =	z3-solver
MODPY_EGG_VERSION =	4.8.9.0

CATEGORIES +=		math

HOMEPAGE =		https://github.com/angr/angr-z3

WANTLIB +=		${COMPILER_LIBCXX} c m

# C++11
COMPILER =		base-clang ports-gcc

.include <bsd.port.mk>
