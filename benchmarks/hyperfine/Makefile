COMMENT =		command-line benchmarking tool

GH_ACCOUNT =		sharkdp
GH_PROJECT =		hyperfine
GH_TAGNAME =		v1.12.0

CATEGORIES =		benchmarks

# MIT/Apache-2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		c c++abi m pthread

MODULES =		devel/cargo

DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

CONFIGURE_STYLE =	cargo

.include "crates.inc"

.include <bsd.port.mk>
