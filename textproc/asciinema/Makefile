COMMENT=		terminal session recorder

GH_PROJECT=		asciinema
GH_ACCOUNT=		asciinema
GH_TAGNAME=		v3.2.0

CATEGORIES=		textproc graphics

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

# C1x
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += ${MODCARGO_WANTLIB} m util

MODULES=		devel/cargo

CONFIGURE_STYLE=	cargo

.include "crates.inc"

.include <bsd.port.mk>
