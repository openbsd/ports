# $OpenBSD: Makefile,v 1.3 2019/08/16 23:27:09 cwen Exp $

COMMENT =		efficient SMT solver library (angr fork)

ANGR_PYTHON_MODULE =	z3-solver
# devel/angr/py-claripy requires this exact version, newer 4.8.5.0 breaks it.
MODPY_EGG_VERSION =	4.5.1.0.post2
REVISION =	0

CATEGORIES +=		math

HOMEPAGE =		https://github.com/angr/angr-z3

WANTLIB +=		${COMPILER_LIBCXX} c m

# C++11
COMPILER =		base-clang ports-gcc

.include <bsd.port.mk>
