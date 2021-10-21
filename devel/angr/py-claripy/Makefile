# $OpenBSD: Makefile,v 1.9 2021/10/21 20:41:21 sthen Exp $

COMMENT =		abstraction layer for constraint solvers

ANGR_PYTHON_MODULE =	claripy
REVISION =		0

# tests write here
PORTHOME =		${WRKDIR}

# See https://github.com/angr/claripy/issues/86 wrt. old py-z3-solver version.
RUN_DEPENDS =		devel/angr/py-z3-solver>=4.8.9.0 \
			devel/py-cachetools${MODPY_FLAVOR} \
			devel/py-future${MODPY_FLAVOR} \
			math/py-pysmt${MODPY_FLAVOR}

.include <bsd.port.mk>
