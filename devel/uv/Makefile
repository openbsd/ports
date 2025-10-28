# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =		sparc64

COMMENT =		Python package and project manager

GH_ACCOUNT =		astral-sh
GH_PROJECT =		uv
GH_TAGNAME =		${MODPY_DISTV}
MODPY_DISTV =		0.9.5

ASYNC_ZIP =		285e48742b74ab109887d62e1ae79e7c15fd4878
PUBGRUB =		d8efd77673c9a90792da9da31b6c0da7ea8a324b
REQWEST_MIDDLEWARE =	7650ed76215a962a96d94a79be71c27bffde7ab2
TL =			6e25b2ee2513d75385101a8ff9f591ef51f314ec

DIST_TUPLE +=	github astral-sh rs-async-zip ${ASYNC_ZIP} ../rs-async-zip
DIST_TUPLE +=	github astral-sh pubgrub ${PUBGRUB} ../pubgrub
DIST_TUPLE +=	github astral-sh reqwest-middleware ${REQWEST_MIDDLEWARE} \
		../reqwest-middleware
DIST_TUPLE +=	github astral-sh tl ${TL} ../tl

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
