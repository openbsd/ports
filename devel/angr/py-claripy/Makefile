# $OpenBSD: Makefile,v 1.2 2019/11/10 09:29:32 kn Exp $

COMMENT =		abstraction layer for constraint solvers

ANGR_PYTHON_MODULE =	claripy

# tests write here
PORTHOME =		${WRKDIR}

# See https://github.com/angr/claripy/issues/86 wrt. old py-z3-solver version.
RUN_DEPENDS =		devel/angr/py-z3-solver>=4.8.6.0 \
			devel/py-cachetools${MODPY_FLAVOR} \
			devel/py-future${MODPY_FLAVOR} \
			math/py-pysmt${MODPY_FLAVOR}

.include <bsd.port.mk>
