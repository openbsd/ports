# $OpenBSD: Makefile,v 1.4 2019/11/10 09:29:32 kn Exp $

COMMENT =		efficient SMT solver library (angr fork)

ANGR_PYTHON_MODULE =	z3-solver
MODPY_EGG_VERSION =	4.8.6.0

CATEGORIES +=		math

HOMEPAGE =		https://github.com/angr/angr-z3

WANTLIB +=		${COMPILER_LIBCXX} c m

# C++11
COMPILER =		base-clang ports-gcc

.include <bsd.port.mk>
