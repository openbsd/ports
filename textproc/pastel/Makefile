COMMENT =		command line tool to manipulate colors

GH_ACCOUNT =		sharkdp
GH_PROJECT =		pastel
GH_TAGNAME =		v0.9.0

MAINTAINER =		Volker Schlecht <openbsd-ports@schlecht.dev>

CATEGORIES =		textproc graphics

# MIT or Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo
COMPILER =		base-clang ports-gcc
WANTLIB += 		${MODCARGO_WANTLIB} m

CONFIGURE_STYLE =	cargo

.include "crates.inc"
.include <bsd.port.mk>
