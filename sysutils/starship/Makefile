COMMENT =	minimal customizable cross-shell prompt

V = 		1.26.0
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

RUN_DEPENDS =		*-nerd-fonts-*:fonts/nerd-fonts/symbolsonly

TEST_DEPENDS =		devel/git
PORTHOME =		${WRKSRC}/testhome

WANTLIB += ${MODCARGO_WANTLIB} m

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/elvish/lib
	${PREFIX}/bin/starship completions elvish > \
		${PREFIX}/share/elvish/lib/starship.elv
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions
	${PREFIX}/bin/starship completions zsh > \
		${PREFIX}/share/zsh/site-functions/_starship

pre-test:
	mkdir -p ${PORTHOME}/.config

.include "crates.inc"
.include <bsd.port.mk>
