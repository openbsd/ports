COMMENT =	TUI client for Bluesky

DISTNAME =	tuisky-${V}
V =		0.1.5

DIST_TUPLE +=	github sugyan tuisky v${V} .

CATEGORIES =	net

HOMEPAGE =	https://github.com/sugyan/tuisky

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} crypto m ssl

MODULES +=	devel/cargo

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	cargo

.include "crates.inc"
.include <bsd.port.mk>
