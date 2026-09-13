COMMENT=	offline, privacy-first grammar checker

GH_ACCOUNT=	Automattic
GH_PROJECT=	harper
GH_TAGNAME=	v2.10.0

CATEGORIES=	textproc

# https://github.com/Automattic/harper/
HOMEPAGE=	https://writewithharper.com/

MAINTAINER=	Alvar Penning <post@0x21.biz>

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB +=	${MODCARGO_WANTLIB} zstd

MODULES=	devel/cargo

CONFIGURE_STYLE= cargo

LIB_DEPENDS=	archivers/zstd

MODCARGO_CARGOTOML=	${WRKDIST}/harper-ls/Cargo.toml
MODCARGO_CRATES_KEEP=	zstd-sys
MODCARGO_INSTALL_TARGET_PATHS=	harper-ls

.include "crates.inc"

.include <bsd.port.mk>
