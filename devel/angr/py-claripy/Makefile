COMMENT =		abstraction layer for constraint solvers
REVISION =		1

ANGR_PYTHON_MODULE =	claripy

# tests write here
PORTHOME =		${WRKDIR}

# See https://github.com/angr/claripy/issues/86 wrt. old py-z3-solver version.
RUN_DEPENDS =		devel/angr/py-z3-solver>=4.8.9.0 \
			devel/py-cachetools \
			devel/py-future \
			math/py-pysmt

.include <bsd.port.mk>
