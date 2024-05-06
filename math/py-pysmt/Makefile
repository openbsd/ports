COMMENT =		library for SMT formulae manipulation and solving

MODPY_EGG_VERSION =	0.9.5
DISTNAME =		PySMT-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

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

# added for tests
PORTHOME =		${WRKDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}pysmt/
	${INSTALL_DATA} ${WRKSRC}/README.rst \
	    ${PREFIX}/share/doc/${MODPY_PY_PREFIX}pysmt/

.include <bsd.port.mk>
