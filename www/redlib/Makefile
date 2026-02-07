# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	alternative private front-end to Reddit

V =		0.36.0pl20251216
GH_ACCOUNT =	redlib-org
GH_PROJECT =	redlib
GH_COMMIT =	ba98178bbce0f62265095ba085128c7022e51a1f
DISTNAME =	${GH_PROJECT}-${V}

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
