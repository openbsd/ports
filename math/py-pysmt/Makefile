COMMENT =		library for SMT formulae manipulation and solving

MODPY_EGG_VERSION =	0.9.5
DISTNAME =		PySMT-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		math

HOMEPAGE =		http://www.pysmt.org

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =	setuptools

FLAVORS =		python3
FLAVOR =		python3

# Explicitly not adding RUN_DEPENDS on all the supported
# solvers. That would beat the point of this library.
# Currently supported and ported is math/z3.

# Not needed as of version 0.9.5, but devel/angr/py-claripy
# still depends on it being there at run time. We can likely
# shuffle things around following an update of angr.
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

# added for tests
PORTHOME =		${WRKDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}pysmt/
	${INSTALL_DATA} ${WRKSRC}/README.rst \
	    ${PREFIX}/share/doc/${MODPY_PY_PREFIX}pysmt/

.include <bsd.port.mk>
