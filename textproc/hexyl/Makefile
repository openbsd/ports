COMMENT =		simple console hex viewer

GH_ACCOUNT =		sharkdp
GH_PROJECT =		hexyl
GH_TAGNAME =		v0.13.1

MAINTAINER =		Volker Schlecht <openbsd-ports@schlecht.dev>

CATEGORIES =		textproc

# MIT or Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo
COMPILER =		base-clang ports-gcc
WANTLIB += 		${MODCARGO_WANTLIB}

CONFIGURE_STYLE =	cargo

.include "crates.inc"
.include <bsd.port.mk>
