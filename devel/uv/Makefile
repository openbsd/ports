# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =		sparc64

COMMENT =		Python package and project manager

MODPY_DISTV =		0.9.21
GH_ACCOUNT =		astral-sh
GH_PROJECT =		uv
GH_TAGNAME =		${MODPY_DISTV}

CATEGORIES =		devel

# https://github.com/astral-sh/uv
HOMEPAGE =		https://docs.astral.sh/uv/

MAINTAINER =		Laurent Cheylus <foxy@free.fr>

# MIT or Apache2.0
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =		devel/maturin \
			devel/py-installer

LIB_DEPENDS +=		archivers/bzip2 \
			archivers/xz \
			archivers/zstd

WANTLIB =		${MODCARGO_WANTLIB} bz2 m zstd lzma

MODULES =		devel/cargo \
			lang/python
CONFIGURE_STYLE =	cargo

# Annoying static dependencies throughout crates/*/Cargo.toml...
MODCARGO_CRATES_KEEP =	lzma-sys

SEPARATE_BUILD =	Yes

post-build:
	cd ${WRKSRC}/crates/uv-build && env HOME=${WRKSRC} maturin build \
		-j ${MAKE_JOBS} --offline --profile release \
		--out ${MODCARGO_TARGET_DIR}
	${MODCARGO_TARGET_DIR}/release/uv -n --generate-shell-completion bash \
		> ${WRKBUILD}/uv.bash
	${MODCARGO_TARGET_DIR}/release/uv -n --generate-shell-completion fish \
		> ${WRKBUILD}/uv.fish
	${MODCARGO_TARGET_DIR}/release/uv -n --generate-shell-completion zsh \
		> ${WRKBUILD}/uv.zsh

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/uv ${PREFIX}/bin/

	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}
	${_MODPY_RUNBIN} -m installer -d ${WRKINST} ${WRKBUILD}/target/uv_build*.whl

	# uvx is a shell script to exec 'uv tool run'
	${SUBST_PROGRAM} ${FILESDIR}/uvx ${PREFIX}/bin/uvx

	${INSTALL_DATA_DIR} \
		${PREFIX}/share/bash-completion/completions \
		${PREFIX}/share/fish/vendor_completions.d \
		${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKBUILD}/uv.bash \
		${PREFIX}/share/bash-completion/completions/uv
	${INSTALL_DATA} ${WRKBUILD}/uv.fish \
		${PREFIX}/share/fish/vendor_completions.d/uv.fish
	${INSTALL_DATA} ${WRKBUILD}/uv.zsh \
		${PREFIX}/share/zsh/site-functions/_uv

.include "crates.inc"

.include <bsd.port.mk>
