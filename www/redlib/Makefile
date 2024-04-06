# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	alternative private front-end to Reddit

GH_ACCOUNT =	redlib-org
GH_PROJECT =	redlib
GH_TAGNAME =	v0.31.2

CATEGORIES =	www

MAINTAINER =	Lucas Raab <tuftedocelot@fastmail.fm>

# AGPL3
PERMIT_PACKAGE =	Yes

WANTLIB =	${MODCARGO_WANTLIB} m

MODULES =	devel/cargo

SEPARATE_BUILD =	Yes
NO_TEST =	Yes

CONFIGURE_STYLE =	cargo

.include "crates.inc"

.include <bsd.port.mk>
