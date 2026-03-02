COMMENT=	library for SMT formulae manipulation and solving

MODPY_DISTV=	0.9.6
GH_ACCOUNT=	pysmt
GH_PROJECT=	pysmt
GH_TAGNAME=	v${MODPY_DISTV}
PKGNAME=	py-PySMT-${MODPY_DISTV}

CATEGORIES=	math

HOMEPAGE=	https://github.com/pysmt/pysmt

# Apache2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

# Explicitly not adding RUN_DEPENDS on all the supported
# solvers. That would beat the point of this library.
# Currently supported and ported is math/z3.

# for tests
PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
