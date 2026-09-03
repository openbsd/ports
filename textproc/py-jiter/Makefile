COMMENT=	fast iterable JSON parser

MODPY_DISTV=	0.16.0
DISTNAME=	jiter-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	maturin
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-dirty-equals

# needs pytest-examples
MODPY_PYTEST_ARGS= --ignore tests/test_docs.py

WRKSRC=		${WRKDIST}/crates/jiter-python
MODCARGO_CARGOLOCK=	${WRKDIST}/Cargo.lock

.include "crates.inc"
.include <bsd.port.mk>
