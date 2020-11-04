# $OpenBSD: Makefile,v 1.7 2020/11/04 20:58:16 kn Exp $

COMMENT =		abstraction layer for constraint solvers
REVISION =		0

ANGR_PYTHON_MODULE =	claripy

# tests write here
PORTHOME =		${WRKDIR}

# See https://github.com/angr/claripy/issues/86 wrt. old py-z3-solver version.
RUN_DEPENDS =		devel/angr/py-z3-solver>=4.8.6.0 \
			devel/py-cachetools \
			devel/py-future${MODPY_FLAVOR} \
			math/py-pysmt${MODPY_FLAVOR}

.include <bsd.port.mk>
