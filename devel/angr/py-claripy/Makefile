# $OpenBSD: Makefile,v 1.5 2020/07/03 21:12:38 sthen Exp $

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
