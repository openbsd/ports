COMMENT=	tokenizers with a focus on performance

MODPY_DISTV=	0.23.1
REVISION=	0
DISTNAME=	tokenizers-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODCARGO_WANTLIB} c++ m onig

# C++11
COMPILER=	base-clang ports-gcc

MODCARGO_CARGOTOML= ${WRKSRC}/bindings/python/Cargo.toml

MODULES=	lang/python
MODPY_PYBUILD=	maturin
MODPY_PI=	Yes

LIB_DEPENDS=	textproc/oniguruma

# XXX override setting --manifest-path, otherwise Maturin misses the
# Python metadata outside the Rust workspace.
do-build:
	${MODCARGO_CARGO_RUN} build --release ${MODCARGO_BUILD_ARGS}

.include "crates.inc"
.include <bsd.port.mk>
