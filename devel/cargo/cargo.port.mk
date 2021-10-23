# $OpenBSD: cargo.port.mk,v 1.24 2021/09/11 07:13:13 semarie Exp $

CATEGORIES +=	lang/rust

# List of static dependencies. The format is cratename-version.
# MODCARGO_CRATES will be downloaded from MASTER_SITES_CRATESIO.
MODCARGO_CRATES ?=

# List of features to build (space separated list).
MODCARGO_FEATURES ?=

# Force using only MODCARGO_FEATURES if Yes
MODCARGO_NO_DEFAULT_FEATURES ?=	No

# List of crates to update (no version).
# Used to override a dependency with newer version.
MODCARGO_CRATES_UPDATE ?=

# RUSTFLAGS variable to pass to cargo.
MODCARGO_RUSTFLAGS ?=

# Name of the local directory for vendoring crates.
MODCARGO_VENDOR_DIR ?= ${WRKSRC}/modcargo-crates

# Default path for cargo manifest.
MODCARGO_CARGOTOML ?= ${WRKSRC}/Cargo.toml

# Define MASTER_SITES_CRATESIO for crates.io
MASTER_SITES_CRATESIO =	https://crates.io/api/v1/crates/

# Save crates inside particular DIST_SUBDIR by default.
# If you use DIST_SUBDIR, adjust MODCARGO_DIST_SUBDIR.
.if defined(DIST_SUBDIR) && !defined(MODCARGO_DIST_SUBDIR)
ERRORS += "Fatal: MODCARGO_DIST_SUBDIR should be defined if DIST_SUBDIR is defined"
.endif
MODCARGO_DIST_SUBDIR ?= cargo

.if empty(MODCARGO_DIST_SUBDIR)
_MODCARGO_DIST_SUBDIR =
.else
_MODCARGO_DIST_SUBDIR = ${MODCARGO_DIST_SUBDIR}/
.endif

# Use MASTER_SITES9 to grab crates by default.
# Could be changed by setting MODCARGO_MASTER_SITESN.
MODCARGO_MASTER_SITESN ?= 9
MASTER_SITES${MODCARGO_MASTER_SITESN} ?= ${MASTER_SITES_CRATESIO}

# per crates options
MODCARGO_CRATES_SQLITE3_BUNDLED ?= No

# Generated list of DISTFILES.
.for _cratename _cratever in ${MODCARGO_CRATES}
DISTFILES +=	${_MODCARGO_DIST_SUBDIR}${_cratename}-${_cratever}.tar.gz{${_cratename}/${_cratever}/download}:${MODCARGO_MASTER_SITESN}
.endfor

# post-extract target for preparing crates directory.
# It will put all crates in the local crates directory.
MODCARGO_post-extract = \
	${ECHO_MSG} "[modcargo] moving crates to ${MODCARGO_VENDOR_DIR}" ; \
	mkdir ${MODCARGO_VENDOR_DIR} ;
.for _cratename _cratever in ${MODCARGO_CRATES}
MODCARGO_post-extract += \
	mv ${WRKDIR}/${_cratename}-${_cratever} ${MODCARGO_VENDOR_DIR}/${_cratename}-${_cratever} ;
.endfor

# post-extract target to provide clean environment for specific crates
# in order to avoid rebuilding libraries from source behind us.
MODCARGO_CRATES_BUILDDEP ?=	Yes
.if ${MODCARGO_CRATES_BUILDDEP:L} == "yes"
.  for _cratename _cratever in ${MODCARGO_CRATES}

.    if "${_cratename}" == "pkg-config"
# configure to build no static by default
MODCARGO_ENV +=	PKG_CONFIG_ALL_DYNAMIC=1

.    elif "${_cratename}" == "bzip2-sys"
MODCARGO_post-extract += \
	${ECHO_MSG} "[modcargo] Removing libsrc for ${_cratename}-${_cratever}" ; \
	rm -rf -- ${MODCARGO_VENDOR_DIR}/${_cratename}-${_cratever}/bzip2-* ; \
	echo 'fn main() { println!("cargo:rustc-link-lib=bz2\ncargo:rustc-link-search=${LOCALBASE}/lib"); }' \
		> ${MODCARGO_VENDOR_DIR}/${_cratename}-${_cratever}/build.rs ;

.    elif "${_cratename}" == "curl-sys"
MODCARGO_post-extract += \
	${ECHO_MSG} "[modcargo] Removing libsrc for ${_cratename}-${_cratever}" ; \
	rm -rf -- ${MODCARGO_VENDOR_DIR}/${_cratename}-${_cratever}/curl ;

.    elif "${_cratename}" == "gettext-sys"
MODCARGO_ENV +=	GETTEXT_DIR=${LOCALBASE}
MODCARGO_post-extract += \
	${ECHO_MSG} "[modcargo] Removing libsrc for ${_cratename}-${_cratever}" ; \
	rm -f -- ${MODCARGO_VENDOR_DIR}/${_cratename}-${_cratever}/gettext-*.tar.xz ;

.    elif "${_cratename}" == "libdbus-sys"
# no libsrc, fail if lib not found

.    elif "${_cratename}" == "libgit2-sys"
MODCARGO_ENV +=	LIBGIT2_SYS_USE_PKG_CONFIG=1
MODCARGO_post-extract += \
	${ECHO_MSG} "[modcargo] Removing libsrc for ${_cratename}-${_cratever}" ; \
	rm -rf -- ${MODCARGO_VENDOR_DIR}/${_cratename}-${_cratever}/libgit2 ;

.    elif "${_cratename}" == "libsodium-sys"
MODCARGO_ENV +=	SODIUM_SHARED=1
MODCARGO_post-extract += \
	${ECHO_MSG} "[modcargo] Removing libsrc for ${_cratename}-${_cratever}" ; \
	rm -f -- ${MODCARGO_VENDOR_DIR}/${_cratename}-${_cratever}/libsodium-*.tar.gz ;

.    elif "${_cratename}" == "libsqlite3-sys" && ${MODCARGO_CRATES_SQLITE3_BUNDLED:L} == "yes"
MODCARGO_post-extract += \
	${ECHO_MSG} "[modcargo] Keeping libsrc for ${_cratename}-${_cratever}" ;	

.    elif "${_cratename}" == "libsqlite3-sys"
MODCARGO_post-extract += \
	${ECHO_MSG} "[modcargo] Removing libsrc for ${_cratename}-${_cratever}" ; \
	rm -rf -- ${MODCARGO_VENDOR_DIR}/${_cratename}-${_cratever}/sqlite3 ;

.    elif "${_cratename}" == "libssh2-sys"
MODCARGO_ENV +=	LIBSSH2_SYS_USE_PKG_CONFIG=1
MODCARGO_post-extract += \
	${ECHO_MSG} "[modcargo] Removing libsrc for ${_cratename}-${_cratever}" ; \
	rm -rf -- ${MODCARGO_VENDOR_DIR}/${_cratename}-${_cratever}/libssh2 ;

.    elif "${_cratename}" == "libz-sys"
MODCARGO_ENV +=	LIBZ_SYS_STATIC=0
MODCARGO_post-extract += \
	${ECHO_MSG} "[modcargo] Removing libsrc for ${_cratename}-${_cratever}" ; \
	rm -rf -- ${MODCARGO_VENDOR_DIR}/${_cratename}-${_cratever}/src/zlib ;

.    elif "${_cratename}" == "lua52-sys"
MODCARGO_post-extract += \
	${ECHO_MSG} "[modcargo] Removing libsrc for ${_cratename}-${_cratever}" ; \
	rm -rf -- ${MODCARGO_VENDOR_DIR}/${_cratename}-${_cratever}/lua ; \
	${ECHO_MSG} "[modcargo] Patching ${_cratename}-${_cratever} to find lang/lua/5.2" ; \
	sed -i -e 's,find_library("lua5.2"),find_library("lua52"),' \
		${MODCARGO_VENDOR_DIR}/${_cratename}-${_cratever}/build.rs ;

.    elif "${_cratename}" == "openssl-sys"
MODCARGO_post-extract += \
	${ECHO_MSG} "[modcargo] Patching ${_cratename}-${_cratever} for supporting -current" ; \
	sed -i -e "/ => ('.', '.'),/h" \
		-e "/ => ('.', '.', '.'),/h" \
		-e "/_ => version_error(),/{g; s/(.*) =>/_ =>/; }" \
		${MODCARGO_VENDOR_DIR}/${_cratename}-${_cratever}/build/main.rs ;

.    elif "${_cratename}" == "pcre2-sys"
MODCARGO_post-extract += \
	${ECHO_MSG} "[modcargo] Removing libsrc for ${_cratename}-${_cratever}" ; \
	rm -rf -- ${MODCARGO_VENDOR_DIR}/${_cratename}-${_cratever}/pcre2 ;

.    elif "${_cratename}" == "portaudio-sys"
# no libsrc, fail if lib not found

.    elif "${_cratename}" == "pq-sys"
# no libsrc, fail if lib not found

.    elif "${_cratename}" == "onig_sys"
MODCARGO_ENV +=	RUSTONIG_SYSTEM_LIBONIG=1
MODCARGO_post-extract += \
	${ECHO_MSG} "[modcargo] Removing libsrc for ${_cratename}-${_cratever}" ; \
	rm -rf -- ${MODCARGO_VENDOR_DIR}/${_cratename}-${_cratever}/oniguruma ;

.    elif "${_cratename}" == "sass-sys"
MODCARGO_post-extract += \
	${ECHO_MSG} "[modcargo] Removing libsrc for ${_cratename}-${_cratever}" ; \
	rm -rf -- ${MODCARGO_VENDOR_DIR}/${_cratename}-${_cratever}/libsass ;

.    endif
.  endfor
.endif

# post-patch target for generating metadata of crates.
.for _cratename _cratever in ${MODCARGO_CRATES}
MODCARGO_post-patch += \
	${ECHO_MSG} "[modcargo] Generating metadata for ${_cratename}-${_cratever}" ; \
	${LOCALBASE}/bin/cargo-generate-vendor \
		${FULLDISTDIR}/${_MODCARGO_DIST_SUBDIR}${_cratename}-${_cratever}.tar.gz \
		${MODCARGO_VENDOR_DIR}/${_cratename}-${_cratever} ;
.endfor

# configure hook. Place a config file for overriding crates-io index by
# local source directory, and set compilation options (based on release).
# Enabled by use of "CONFIGURE_STYLE=cargo".
MODCARGO_configure = \
	mkdir -p ${WRKDIR}/.cargo; \
	\
	echo "[net]" >${WRKDIR}/.cargo/config; \
	echo "offline = true" >>${WRKDIR}/.cargo/config; \
	echo "[source.modcargo]" >>${WRKDIR}/.cargo/config; \
	echo "directory = '${MODCARGO_VENDOR_DIR}'" \
		>>${WRKDIR}/.cargo/config; \
	echo "[source.crates-io]" >>${WRKDIR}/.cargo/config; \
	echo "replace-with = 'modcargo'" >>${WRKDIR}/.cargo/config; \

# set profile (based on 'release' profile) for 'build' and 'test'
# see https://doc.rust-lang.org/cargo/reference/profiles.html#release
# only 'opt-level' differs from default
.for _profile in release bench
MODCARGO_configure += \
	echo "" >>${WRKDIR}/.cargo/config; \
	echo "[profile.${_profile}]" >>${WRKDIR}/.cargo/config; \
	echo "opt-level = 2" >>${WRKDIR}/.cargo/config; \
	echo "debug = 0" >>${WRKDIR}/.cargo/config; \
	echo "debug-assertions = false" >>${WRKDIR}/.cargo/config; \
	echo "overflow-checks = false" >>${WRKDIR}/.cargo/config; \
	echo "lto = false" >>${WRKDIR}/.cargo/config; \
	echo "panic = 'unwind'" >>${WRKDIR}/.cargo/config; \
	echo "incremental = false" >>${WRKDIR}/.cargo/config; \
	echo "codegen-units = 4" >>${WRKDIR}/.cargo/config; \
	echo "rpath = false" >>${WRKDIR}/.cargo/config;
.endfor

# Update crates: place all crates on the same command line.
.if !empty(MODCARGO_CRATES_UPDATE)
MODCARGO_configure += \
	${MODCARGO_CARGO_UPDATE}
.for _crate in ${MODCARGO_CRATES_UPDATE}
MODCARGO_configure += \
	--package ${_crate}
.endfor
MODCARGO_configure += ;
.endif

# Build dependencies.
MODCARGO_BUILD_DEPENDS = lang/rust

# devel/cargo-generate-vendor is mandatory for hooks.
BUILD_DEPENDS +=	devel/cargo-generate-vendor

MODCARGO_BUILDDEP ?=	Yes
.if ${MODCARGO_BUILDDEP:L} == "yes"
BUILD_DEPENDS +=	${MODCARGO_BUILD_DEPENDS}
.endif

# Location of cargo binary (default to devel/cargo binary)
MODCARGO_CARGO_BIN ?=	${LOCALBASE}/bin/cargo

# Location of the cargo output directory.
MODCARGO_TARGET_DIR ?=	${WRKBUILD}/target

# Environment for cargo
#  - CARGO_HOME: local cache of the registry index
#  - CARGO_BUILD_JOBS: configure number of jobs to run
#  - CARGO_TARGET_DIR: location of where to place all generated artifacts
#  - RUSTC: path of rustc binary (default to lang/rust)
#  - RUSTDOC: path of rustdoc binary (default to lang/rust)
#  - RUSTFLAGS: custom flags to pass to all compiler invocations that Cargo performs
#
# XXX LDFLAGS => -C link-arg=$1 (via RUSTFLAGS)
MODCARGO_ENV += \
	CARGO_HOME=${WRKDIR}/cargo-home \
	CARGO_BUILD_JOBS=${MAKE_JOBS} \
	CARGO_TARGET_DIR=${MODCARGO_TARGET_DIR} \
	RUSTC=${LOCALBASE}/bin/rustc \
	RUSTDOC=${LOCALBASE}/bin/rustdoc \
	RUSTFLAGS="${MODCARGO_RUSTFLAGS}"

# Helper to shorten cargo calls.
MODCARGO_CARGO_RUN = \
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODCARGO_ENV} \
		${MODCARGO_CARGO_BIN}

# User arguments for cargo targets.
MODCARGO_BUILD_ARGS ?=
MODCARGO_INSTALL_ARGS ?=
MODCARGO_TEST_ARGS ?=

# Manage crate features.
.if !empty(MODCARGO_FEATURES)
MODCARGO_BUILD_ARGS +=		--features='${MODCARGO_FEATURES}'
MODCARGO_INSTALL_ARGS +=	--features='${MODCARGO_FEATURES}'
MODCARGO_TEST_ARGS +=		--features='${MODCARGO_FEATURES}'
.endif

.if ${MODCARGO_NO_DEFAULT_FEATURES:L} == "yes"
MODCARGO_BUILD_ARGS +=		--no-default-features
MODCARGO_INSTALL_ARGS +=	--no-default-features
MODCARGO_TEST_ARGS +=		--no-default-features
.endif

# Helper for updating a crate.
MODCARGO_CARGO_UPDATE = \
	${MODCARGO_CARGO_RUN} update \
		--manifest-path ${MODCARGO_CARGOTOML} \
		--verbose

# Use module targets ?
MODCARGO_BUILD ?=	Yes
MODCARGO_INSTALL ?=	Yes
MODCARGO_TEST ?=	Yes

# Define the build target.
MODCARGO_BUILD_TARGET = \
	${MODCARGO_CARGO_RUN} build \
		--manifest-path ${MODCARGO_CARGOTOML} \
		--offline \
		--release \
		--verbose \
		${MODCARGO_BUILD_ARGS} ;

.if !target(do-build) && ${MODCARGO_BUILD:L} == "yes"
do-build:
	@${MODCARGO_BUILD_TARGET}
.endif

# Define the install target.
MODCARGO_INSTALL_TARGET = \
	${MODCARGO_CARGO_RUN} install \
		--root="${PREFIX}" \
		--path . \
		--offline \
		--verbose \
		${MODCARGO_INSTALL_ARGS} ; \
	rm -- "${PREFIX}/.crates.toml" "${PREFIX}/.crates2.json" ;

.if !target(do-install) && ${MODCARGO_INSTALL:L} == "yes"
do-install:
	@${MODCARGO_INSTALL_TARGET}
.endif

# Define the test target.
MODCARGO_TEST_TARGET = \
	${MODCARGO_CARGO_RUN} test \
		--manifest-path ${MODCARGO_CARGOTOML} \
		--offline \
		--release \
		--verbose \
		${MODCARGO_TEST_ARGS} ;

.if !target(do-test) && ${MODCARGO_TEST:L} == "yes"
do-test:
	@${MODCARGO_TEST_TARGET}
.endif


#
# Helper targets for port maintainer
#

# modcargo-metadata: regenerate metadata. useful target when working on a port.
modcargo-metadata: patch
	@${_PMAKE} _modcargo-metadata

# run as _pbuild
_modcargo-metadata:
	@${MODCARGO_post-patch}

# modcargo-gen-crates will output crates list from Cargo.lock file.
modcargo-gen-crates: extract
	@echo '# run: make modcargo-gen-crates-licenses'
	@awk '	/^name = / { n=$$3; gsub("\"", "", n); } \
		/^version = / { v=$$3; gsub("\"", "", v); } \
		/^source = "registry\+https:\/\/github.com\/rust-lang\/crates\.io-index"/ \
			{ print "MODCARGO_CRATES +=	" n "	" v; }' \
		<${MODCARGO_CARGOTOML:toml=lock}

# modcargo-gen-crates-licenses will try to grab license information from downloaded crates.
modcargo-gen-crates-licenses: configure
	@echo '# $$Open''BSD$$'
.for _cratename _cratever in ${MODCARGO_CRATES}
	@echo -n "MODCARGO_CRATES +=	${_cratename}	${_cratever}	# "
	@sed -ne '/^license.*=/{;s/^license.*= *"\([^"]*\)".*/\1/p;q;};$$s/^.*$$/XXX missing license/p' \
		${MODCARGO_VENDOR_DIR}/${_cratename}-${_cratever}/Cargo.toml
.endfor
