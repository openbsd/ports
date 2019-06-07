# $OpenBSD: Makefile,v 1.1.1.1 2019/06/07 07:58:57 jasper Exp $

COMMENT =		library for SMT formulae manipulation and solving

MODPY_EGG_VERSION =	0.8.0
DISTNAME =		PySMT-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		math

HOMEPAGE =		http://www.pysmt.org

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

# Explicitly not adding RUN_DEPENDS on all the supported
# solvers. That would beat the point of this library.
# Currently supported and ported is math/z3.
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

post-install:
.for i in pysmt pysmt-install pysmt-shell
	mv ${PREFIX}/bin/$i{,${MODPY_BIN_SUFFIX}}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}pysmt/
	${INSTALL_DATA} ${WRKSRC}/README.rst \
	    ${PREFIX}/share/doc/${MODPY_PY_PREFIX}pysmt/

.include <bsd.port.mk>
