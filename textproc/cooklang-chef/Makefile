COMMENT =		Cooklang CLI tool

GH_ACCOUNT =		Zheoni
GH_PROJECT =		cooklang-chef
GH_TAGNAME =		v0.10.3
CATEGORIES =		textproc

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

HOMEPAGE =		https://github.com/Zheoni/cooklang-chef

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} m zstd

MODULES =		devel/cargo
MODCARGO_RUSTFLAGS =	-L${LOCALBASE}/lib

LIB_DEPENDS =		archivers/zstd

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	cargo

.include "crates.inc"
.include <bsd.port.mk>
