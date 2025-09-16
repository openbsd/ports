COMMENT=		terminal session recorder

GH_PROJECT=		asciinema
GH_ACCOUNT=		asciinema
GH_TAGNAME=		v3.0.0

CATEGORIES=		textproc graphics

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODCARGO_WANTLIB} m util

MODULES=		devel/cargo

CONFIGURE_STYLE=	cargo

.include "crates.inc"

.include <bsd.port.mk>
