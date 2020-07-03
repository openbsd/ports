# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:38 sthen Exp $

COMMENT =		efficient SMT solver library (angr fork)

ANGR_PYTHON_MODULE =	z3-solver
MODPY_EGG_VERSION =	4.8.8.0
REVISION =		0

CATEGORIES +=		math

HOMEPAGE =		https://github.com/angr/angr-z3

WANTLIB +=		${COMPILER_LIBCXX} c m

# C++11
COMPILER =		base-clang ports-gcc

.include <bsd.port.mk>
