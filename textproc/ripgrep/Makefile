COMMENT =		line oriented search tool using Rust's regex library

GH_ACCOUNT =		BurntSushi
GH_PROJECT =		ripgrep
GH_TAGNAME =		14.1.0
REVISION =		1

CATEGORIES =		textproc sysutils

# Unlicense/MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB}

MODULES =		devel/cargo
BUILD_DEPENDS =		textproc/asciidoctor

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

MODCARGO_RUSTFLAGS =	-C debuginfo=0

RELEASE_DIR =		${MODCARGO_TARGET_DIR}/release

# generate manpage ans shell completions
# fish completion excluded as it is shipped with shells/fish
post-build:
	${RELEASE_DIR}/rg --generate man > ${WRKBUILD}/rg.1
	${RELEASE_DIR}/rg --generate complete-bash > ${WRKBUILD}/rg.bash
	${RELEASE_DIR}/rg --generate complete-zsh > ${WRKBUILD}/rg.zsh

do-install:
	${INSTALL_PROGRAM} ${RELEASE_DIR}/rg ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKBUILD}/rg.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions \
	    ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKBUILD}/rg.bash \
	    ${PREFIX}/share/bash-completion/completions/rg
	${INSTALL_DATA} ${WRKBUILD}/rg.zsh \
	    ${PREFIX}/share/zsh/site-functions/_rg

.include "crates.inc"

.include <bsd.port.mk>
