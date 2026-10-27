COMMENT =		everyday-use client-side map-aware mirror ranking tool

GH_ACCOUNT =		westandskif
GH_PROJECT =		rate-mirrors
GH_TAGNAME =		v0.34.1

CATEGORIES =		net

# CC-BY-NC-SA 3.0
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODCARGO_WANTLIB} m

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

post-install:
	@mv ${PREFIX}/bin/rate_mirrors ${PREFIX}/bin/rate-mirrors

.include "crates.inc"

.include <bsd.port.mk>
