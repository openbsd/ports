COMMENT =		Lean 4 .olean file (de)compressor

GH_ACCOUNT =		digama0
GH_PROJECT =		leangz
GH_TAGNAME =		v0.1.20

CATEGORIES =		archivers math

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} zstd

MODULES =		devel/cargo

MODCARGO_RUSTFLAGS +=	-L${LOCALBASE}/lib

LIB_DEPENDS =		archivers/zstd

CONFIGURE_STYLE =       cargo

.include "crates.inc"

.include <bsd.port.mk>
