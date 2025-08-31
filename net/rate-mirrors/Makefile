COMMENT =		everyday-use client-side map-aware mirror ranking tool

DIST_TUPLE +=		github westandskif rate-mirrors v0.22.0 .

CATEGORIES =		net

# CC-BY-NC-SA 3.0
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODCARGO_WANTLIB} crypto m ssl

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

post-install:
	@mv ${PREFIX}/bin/rate_mirrors ${PREFIX}/bin/rate-mirrors

.include "crates.inc"

.include <bsd.port.mk>
