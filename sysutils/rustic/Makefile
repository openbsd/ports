# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS =		powerpc64 riscv64 sparc64

COMMENT =		fast, encrypted, deduplicated backups

GH_ACCOUNT =		rustic-rs
GH_PROJECT =		rustic
GH_TAGNAME =		v0.5.4
REVISION =		1

CATEGORIES =		sysutils

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# Apache-2.0 / MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} m zstd

MODULES =		devel/cargo
MODCARGO_RUSTFLAGS =	-L${PREFIX}/lib

LIB_DEPENDS =		archivers/zstd
BUILD_DEPENDS =		security/rust-ring

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

post-build:
.for s in bash fish zsh
	cd ${WRKBUILD}/target/release && \
		./rustic completions $s > rustic.$s
.endfor

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/target/release/rustic ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rustic \
		${PREFIX}/share/bash-completion/completions \
		${PREFIX}/share/fish/vendor_completions.d \
		${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/rustic
	${INSTALL_DATA} ${WRKBUILD}/target/release/rustic.bash \
		${PREFIX}/share/bash-completion/completions/rustic
	${INSTALL_DATA} ${WRKBUILD}/target/release/rustic.fish \
		${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA} ${WRKBUILD}/target/release/rustic.zsh \
		${PREFIX}/share/zsh/site-functions/_rustic

.include "crates.inc"
.include <bsd.port.mk>
