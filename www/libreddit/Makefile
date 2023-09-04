# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS = powerpc64 riscv64 sparc64

COMMENT =	alternative private front-end to Reddit

GH_ACCOUNT =	libreddit
GH_PROJECT =	libreddit
GH_TAGNAME =	v0.30.1
REVISION =	1

CATEGORIES =	www

MAINTAINER =	Lucas Raab <tuftedocelot@fastmail.fm>

# AGPL3
PERMIT_PACKAGE =	Yes

WANTLIB =	${MODCARGO_WANTLIB} m

MODULES =	devel/cargo
BUILD_DEPENDS =	security/rust-ring

SEPARATE_BUILD =	Yes
NO_TEST =	Yes

CONFIGURE_STYLE =	cargo

.include "crates.inc"

.include <bsd.port.mk>
