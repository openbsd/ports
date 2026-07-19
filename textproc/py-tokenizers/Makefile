COMMENT=	tokenizers with a focus on performance

MODPY_DISTV=	0.23.1
DISTNAME=	tokenizers-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODCARGO_CARGOTOML = ${WRKSRC}/bindings/python/Cargo.toml

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	maturin

BUILD_DEPENDS=	textproc/oniguruma

.include "crates.inc"
.include <bsd.port.mk>
