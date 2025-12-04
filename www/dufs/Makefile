COMMENT =	file server that supports static serving, uploading, webdav

DISTNAME =	dufs-${V}
V =		0.45.0

DIST_TUPLE +=	github sigoden dufs v${V} .

CATEGORIES =	www

HOMEPAGE =	https://github.com/sigoden/dufs

# Apache/2.0 and MIT
PERMIT_PACKAGE =	Yes

# -std=c1x
COMPILER =	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES =	devel/cargo

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	cargo

LIB_DEPENDS +=	archivers/xz

WANTLIB +=	${MODCARGO_WANTLIB} lzma m

post-build:
	${WRKBUILD}/target/release/dufs --completions bash > ${WRKBUILD}/dufs.bash
	${WRKBUILD}/target/release/dufs --completions fish > ${WRKBUILD}/dufs.fish
	${WRKBUILD}/target/release/dufs --completions zsh  > ${WRKBUILD}/dufs.zsh

post-install:
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/bash-completion/completions \
		${PREFIX}/share/fish/vendor_completions.d \
		${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKBUILD}/dufs.bash \
		${PREFIX}/share/bash-completion/completions/dufs
	${INSTALL_DATA} ${WRKBUILD}/dufs.fish \
		${PREFIX}/share/fish/vendor_completions.d/dufs.fish
	${INSTALL_DATA} ${WRKBUILD}/dufs.zsh \
		${PREFIX}/share/zsh/site-functions/_dufs


.include "crates.inc"
.include <bsd.port.mk>
