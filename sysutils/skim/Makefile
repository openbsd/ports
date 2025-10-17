COMMENT =	fuzzy finder

CATEGORIES =	sysutils

GH_ACCOUNT =	skim-rs
GH_PROJECT =	skim
GH_TAGNAME =	v0.20.5

MAINTAINER =            Laurence Tratt <laurie@tratt.net>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes
WANTLIB +=	${MODCARGO_WANTLIB} m

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/sk ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${WRKSRC}/bin/sk-tmux ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/man/man1/sk.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/man/man1/sk-tmux.1 ${PREFIX}/man/man1/
	# Key bindings are skim specific
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/skim
	${INSTALL_DATA} ${WRKSRC}/shell/key-bindings.bash \
	  ${PREFIX}/share/examples/skim/
	${INSTALL_DATA} ${WRKSRC}/shell/key-bindings.fish \
	  ${PREFIX}/share/examples/skim/
	${INSTALL_DATA} ${WRKSRC}/shell/key-bindings.zsh \
	  ${PREFIX}/share/examples/skim/
	# Completions go into the relevant shell directory
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/shell/completion.bash \
	  ${PREFIX}/share/bash-completion/completions/sk
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} ${WRKSRC}/shell/completion.zsh \
	  ${PREFIX}/share/zsh/site-functions/_sk

.include "crates.inc"

.include <bsd.port.mk>
