COMMENT=	concrete syntax tree with AST-like properties for Python

MODPY_DISTV=	1.6.0
DISTNAME=	libcst-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

HOMEPAGE=	https://github.com/Instagram/LibCST

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODCARGO_WANTLIB}

MODULES=	lang/python
MODPY_PYBUILD=	setuptools-rust
BUILD_DEPENDS=	devel/py-setuptools_scm
MODPY_PI=	Yes

MODCARGO_CARGOTOML=	${WRKSRC}/native/Cargo.toml

TEST_DEPENDS=		devel/py-hypothesmith
MODPY_TEST_LINK_SO=	Yes

# needs pyre-check
MODPY_PYTEST_ARGS=	--ignore libcst/metadata/tests/test_type_inference_provider.py

.include "crates.inc"
.include <bsd.port.mk>
