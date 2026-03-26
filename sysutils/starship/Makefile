COMMENT =	minimal customizable cross-shell prompt

V = 		1.24.2
DIST_TUPLE +=	github starship starship v${V} .

CATEGORIES =	sysutils shells

HOMEPAGE =	https://starship.rs/

MAINTAINER =	Lydia Sobot <chilledfrogs@disroot.org>

# ISC
PERMIT_PACKAGE =	Yes
MODULES =		devel/cargo

MODCARGO_NO_DEFAULT_FEATURES =	Yes
MODCARGO_FEATURES =	notify
CONFIGURE_STYLE =	cargo

TEST_DEPENDS =		devel/git
PORTHOME =		${WRKSRC}/testhome

WANTLIB += ${MODCARGO_WANTLIB} m

pre-test:
	mkdir -p ${PORTHOME}/.config

.include "crates.inc"
.include <bsd.port.mk>
