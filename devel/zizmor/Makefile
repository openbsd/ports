# aws-lc-sys has constants in .text
# https://github.com/awslabs/s2n-bignum/pull/242
.if ${MACHINE_ARCH} == "amd64"
USE_NOEXECONLY =	Yes
.endif

COMMENT =		static analysis tool for GitHub Actions

GH_ACCOUNT =		zizmorcore
GH_PROJECT =		zizmor
GH_TAGNAME =		v1.28.0

MAINTAINER =		Theo Buehler <tb@openbsd.org>

CATEGORIES =		devel

HOMEPAGE = https://docs.zizmor.sh/

# MIT
PERMIT_PACKAGE =	Yes

# C11
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB +=		${MODCARGO_WANTLIB} m

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

MODCARGO_INSTALL_TARGET_PATHS = crates/zizmor

SEPARATE_BUILD =	Yes

post-build:
	${MODCARGO_TARGET_DIR}/release/zizmor --completions bash > ${WRKBUILD}/zizmor.bash
	${MODCARGO_TARGET_DIR}/release/zizmor --completions fish > ${WRKBUILD}/zizmor.fish
	${MODCARGO_TARGET_DIR}/release/zizmor --completions zsh > ${WRKBUILD}/zizmor.zsh

post-install:
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/bash-completion/completions \
		${PREFIX}/share/fish/vendor_completions.d \
		${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKBUILD}/zizmor.bash \
		${PREFIX}/share/bash-completion/completions/zizmor
	${INSTALL_DATA} ${WRKBUILD}/zizmor.fish \
		${PREFIX}/share/fish/vendor_completions.d/zizmor.fish
	${INSTALL_DATA} ${WRKBUILD}/zizmor.zsh \
		${PREFIX}/share/zsh/site-functions/_zizmor

.include "crates.inc"
.include <bsd.port.mk>
