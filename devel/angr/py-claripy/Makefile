# $OpenBSD: Makefile,v 1.8 2021/01/17 19:50:45 jasper Exp $

COMMENT =		abstraction layer for constraint solvers

ANGR_PYTHON_MODULE =	claripy

# tests write here
PORTHOME =		${WRKDIR}

# See https://github.com/angr/claripy/issues/86 wrt. old py-z3-solver version.
RUN_DEPENDS =		devel/angr/py-z3-solver>=4.8.9.0 \
			devel/py-cachetools \
			devel/py-future${MODPY_FLAVOR} \
			math/py-pysmt${MODPY_FLAVOR}

.include <bsd.port.mk>
