# $OpenBSD: Makefile,v 1.117 2020/08/01 08:36:38 semarie Exp $

ONLY_FOR_ARCHS =	${RUST_ARCHS}

.if "${MACHINE_ARCH}" == "i386"
DPB_PROPERTIES =	lonesome
.else
DPB_PROPERTIES =	parallel
.endif

COMMENT-main =		compiler for Rust Language
COMMENT-gdb =		Rust debugger through gdb
COMMENT-clippy =	Rust linter
COMMENT-rustfmt =	Rust code formatter

V =			1.45.1
CARGO_V =		0.46.1
CLIPPY_V =		0.0.212
RUSTFMT_V =		1.4.17
DISTNAME =		rustc-${V}-src

# rustc bootstrap version
BV-aarch64 =		1.45.0-20200716
BV-amd64 =		1.45.0-20200714
BV-i386 =		1.45.0-20200715
BV-sparc64 =		1.45.0-20200714
BV =			${BV-${MACHINE_ARCH}}

PKGNAME =		rust-${V}
PKGNAME-main =		rust-${V}
PKGNAME-gdb =		rust-gdb-${V}
PKGNAME-clippy =	rust-clippy-${V}
PKGNAME-rustfmt =	rust-rustfmt-${V}

MULTI_PACKAGES =	-main -gdb -clippy -rustfmt

CATEGORIES =		lang

HOMEPAGE =		http://www.rust-lang.org/
MAINTAINER =		Sebastien Marie <semarie@online.fr>

# both MIT and Apache2.0
# with portions covered by various BSD-like licenses
PERMIT_PACKAGE =	Yes

WANTLIB-main =		${COMPILER_LIBCXX} c crypto curl m pthread ssh2 ssl z
WANTLIB-gdb =
WANTLIB-clippy =	c c++abi m pthread
WANTLIB-rustfmt =	c c++abi m pthread

MASTER_SITES =		https://static.rust-lang.org/dist/ \
			https://dev-static.rust-lang.org/dist/
MASTER_SITES0 =		http://kapouay.odns.fr/pub/rust/

FLAVOR ?=
PSEUDO_FLAVORS =	native_bootstrap

DIST_SUBDIR =		rust
EXTRACT_SUFX =		.tar.xz
DISTFILES =		${DISTNAME}${EXTRACT_SUFX}
.if ${FLAVOR} == native_bootstrap
BUILD_DEPENDS +=	lang/rust
.else
DISTFILES +=		${BOOTSTRAP}
.endif

.include <bsd.port.arch.mk>
BOOTSTRAP =		${BOOTSTRAP-${MACHINE_ARCH}}
.for m in ${ONLY_FOR_ARCHS}
BOOTSTRAP-$m =		rustc-bootstrap-${m}-${BV-$m}${EXTRACT_SUFX}:0
SUPDISTFILES +=		${BOOTSTRAP-$m}
.endfor

# list of libraries with a hash in plist
# the second field is used to have a different hash for each library
LIBRUST_WITH_HASHES =	alloc 				01 \
			backtrace 			02 \
			backtrace_sys 			03 \
			chalk_derive			04 \
			cfg_if 				05 \
			compiler_builtins 		06 \
			core 				07 \
			getopts 			08 \
			hashbrown 			09 \
			libc 				0a \
			panic_abort 			0b \
			panic_unwind 			0c \
			proc_macro 			0d \
			rustc_demangle 			0e \
			rustc_driver 			0f \
			rustc_macros 			10 \
			rustc_std_workspace_alloc 	11 \
			rustc_std_workspace_core 	12 \
			rustc_std_workspace_std 	13 \
			std 				14 \
			term 				15 \
			test 				16 \
			unicode_width 			17 \
			unwind				18

# generate a stable hash mostly conforming to rust expectations
# (it should change if anything changed)
# and pass it to build environment
LIBRUST_HASH !=	echo '${FULLPKGNAME}:${BOOTSTRAP}' | sha1 | cut -c1-14
.for _name _number in ${LIBRUST_WITH_HASHES}
LIBR_METADATA_${_name} =	${LIBRUST_HASH}${_number}
MAKE_ENV +=	LIBR_METADATA_${_name}=${LIBRUST_HASH}${_number}
SUBST_VARS +=	LIBR_METADATA_${_name}
.endfor

# per MACHINE_ARCH configuration
.if "${MACHINE_ARCH}" == "aarch64"
TRIPLE_ARCH =		aarch64-unknown-openbsd
.elif "${MACHINE_ARCH}" == "amd64"
TRIPLE_ARCH =		x86_64-unknown-openbsd
.elif "${MACHINE_ARCH}" == "i386"
TRIPLE_ARCH =		i686-unknown-openbsd
.elif "${MACHINE_ARCH}" == "sparc64"
TRIPLE_ARCH =		sparc64-unknown-openbsd
.endif

SUBST_VARS +=		TRIPLE_ARCH \
			V

# on arches where the base compiler is clang: base-clang or ports-clang should be fine,
# as we need devel/llvm only for libs.
# on others archs, use ports-gcc as llvm libraries depends on libestdc++.so and libgcc.a.
COMPILER =		base-clang ports-gcc

MODULES +=		lang/python \
			gnu

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP =		No

BUILD_DEPENDS +=	devel/cmake
BUILD_DEPENDS +=	shells/bash
BUILD_DEPENDS +=	devel/llvm
BUILD_DEPENDS +=	devel/ninja
BUILD_DEPENDS +=	devel/gdb

LIB_DEPENDS-main +=	${LIB_DEPENDS} \
			net/curl \
			security/libssh2

RUN_DEPENDS-gdb +=	lang/rust,-main \
			devel/gdb
RUN_DEPENDS-clippy +=	lang/rust,-main
RUN_DEPENDS-rustfmt +=	lang/rust,-main

MAKE_ENV +=	CARGO_HOME=${WRKBUILD}/cargo-home \
		TMPDIR=${WRKBUILD} \
		LIBSSH2_SYS_USE_PKG_CONFIG=1
TEST_ENV +=	RUST_BACKTRACE=0

.ifdef DEBUG
MAKE_ENV +=	RUST_BACKTRACE=1
MAKE_ENV +=	RUST_LOG=info
.endif

# build/configuration variables
PATCHORIG =		.openbsd.orig
SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

# need for libbacktrace
USE_LIBTOOL =		gnu

TEST_DEPENDS +=		devel/git \
			sysutils/ggrep

# - disable vendor checksum checks
# - SUBSTR cargo testsuite
SUBST_VARS +=	WRKBUILD
post-patch:
	sed -i 's/"files":{[^}]*}/"files":{}/' \
		${WRKSRC}/vendor/*/.cargo-checksum.json
	${SUBST_CMD} ${WRKSRC}/src/tools/cargo/crates/cargo-test-support/src/paths.rs

# - check datasize limit before configuring (and building)
pre-configure:
	@if [ `ulimit -d` -lt 3145728 ]; then \
		echo datasize limit is too low - amd64 build takes approx 4GB; \
		exit 1; fi

# - generate config.toml file
do-configure:
	echo '[build]' >${WRKBUILD}/config.toml
.if ${FLAVOR} == native_bootstrap
	echo 'rustc = "${LOCALBASE}/bin/rustc"' >>${WRKBUILD}/config.toml
	echo 'cargo = "${LOCALBASE}/bin/cargo"' >>${WRKBUILD}/config.toml
.else
	echo 'rustc = "${WRKDIR}/rustc-bootstrap-${MACHINE_ARCH}-${BV}/bin/rustc"' \
		>>${WRKBUILD}/config.toml
	echo 'cargo = "${WRKDIR}/rustc-bootstrap-${MACHINE_ARCH}-${BV}/bin/cargo"' \
		>>${WRKBUILD}/config.toml
.endif
	echo 'python = "${MODPY_BIN}"' >>${WRKBUILD}/config.toml
	echo 'gdb = "${LOCALBASE}/bin/egdb"' >>${WRKBUILD}/config.toml
	echo 'vendor = true' >>${WRKBUILD}/config.toml
	echo 'extended = true' >>${WRKBUILD}/config.toml
	echo 'docs = false' >>${WRKBUILD}/config.toml
	echo 'verbose = 2' >>${WRKBUILD}/config.toml

	echo '[install]' >>${WRKBUILD}/config.toml
	echo 'prefix = "${LOCALBASE}"' >>${WRKBUILD}/config.toml
	echo 'sysconfdir = "${SYSCONFDIR}"' >>${WRKBUILD}/config.toml
	echo 'mandir = "man"' >>${WRKBUILD}/config.toml

	echo '[rust]' >>${WRKBUILD}/config.toml
	echo 'channel = "stable"' >>${WRKBUILD}/config.toml
	echo 'rpath = false' >>${WRKBUILD}/config.toml
	echo 'codegen-tests = false' >>${WRKBUILD}/config.toml
	echo 'verbose-tests = true' >>${WRKBUILD}/config.toml

	echo '[dist]' >>${WRKBUILD}/config.toml
	echo 'src-tarball = false' >>${WRKBUILD}/config.toml

	echo '[llvm]' >>${WRKBUILD}/config.toml
	echo 'static-libstdcpp = false' >>${WRKBUILD}/config.toml
	echo 'ninja = true' >>${WRKBUILD}/config.toml

	echo '[target.${TRIPLE_ARCH}]' >>${WRKBUILD}/config.toml
	echo 'llvm-config = "${LOCALBASE}/bin/llvm-config"' \
		>>${WRKBUILD}/config.toml

BUILD_BIN = cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
	    ${MODPY_BIN} ${WRKSRC}/x.py
TEST_BIN = cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${TEST_ENV} \
	    ${MODPY_BIN} ${WRKSRC}/x.py

do-build:
	${BUILD_BIN} dist --jobs=${MAKE_JOBS} \
		src/libstd src/librustc cargo clippy rustfmt
	rm -rf -- ${WRKBUILD}/build/tmp/dist

COMPONENTS ?=	rustc-${V} rust-std-${V} cargo-${CARGO_V} \
		clippy-${CLIPPY_V} rustfmt-${RUSTFMT_V}
do-install:
	rm -rf ${WRKBUILD}/_extractdist
.for _c in ${COMPONENTS}
	mkdir ${WRKBUILD}/_extractdist
	cd ${WRKBUILD}/_extractdist && tar zxf \
		${WRKBUILD}/build/dist/${_c}-${TRIPLE_ARCH}.tar.gz
	cd ${WRKBUILD}/_extractdist/${_c}-${TRIPLE_ARCH} && \
		${LOCALBASE}/bin/bash ./install.sh \
		--prefix="${PREFIX}" \
		--mandir="${PREFIX}/man"
	rm -rf ${WRKBUILD}/_extractdist
.endfor
	for lib in ${PREFIX}/lib/lib*.* ; do \
		libname=$${lib##*/} ; \
		test -e ${PREFIX}/lib/rustlib/${TRIPLE_ARCH}/lib/$${libname} && \
			ln -fs rustlib/${TRIPLE_ARCH}/lib/$${libname} \
				${PREFIX}/lib/$${libname} ; \
	done

post-install:
	# cleanup
	rm ${PREFIX}/bin/rust-lldb \
		${PREFIX}/lib/rustlib/{install.log,uninstall.sh,rust-installer-version} \
		${PREFIX}/lib/rustlib/components \
		${PREFIX}/lib/rustlib/manifest-*
	# install cargo bash-completion
	mkdir -p ${PREFIX}/share/bash-completion/completions
	mv ${PREFIX}${SYSCONFDIR}/bash_completion.d/cargo \
		${PREFIX}/share/bash-completion/completions
	rmdir ${PREFIX}${SYSCONFDIR}/bash_completion.d \
		${PREFIX}${SYSCONFDIR}
	# compile python stuff
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/lib/rustlib/etc

do-test:
	${TEST_BIN} test --jobs=${MAKE_JOBS} --no-fail-fast

# bootstrap target permits to regenerate the bootstrap archive
BOOTSTRAPDIR=${WRKDIR}/rustc-bootstrap-${MACHINE_ARCH}-${V}-new
bootstrap: build
	${_PBUILD} rm -rf ${BOOTSTRAPDIR}
	${_PBUILD} mkdir -p ${BOOTSTRAPDIR}/{bin,lib}
	${MAKE} clean=fake
	${MAKE} fake \
		PREFIX="${BOOTSTRAPDIR}" \
		COMPONENTS="rustc-${V} rust-std-${V} cargo-${CARGO_V}" \
		FAKE_SETUP=""
	${_PBUILD} rm -rf ${BOOTSTRAPDIR}/{man,share} \
		${BOOTSTRAPDIR}/bin/rust-gdb*
	${_PBUILD} strip ${BOOTSTRAPDIR}/lib/lib*.so \
		${BOOTSTRAPDIR}/lib/rustlib/${TRIPLE_ARCH}/lib/lib*.so
.for _bin in rustc rustdoc cargo
	${_PBUILD} mv ${BOOTSTRAPDIR}/bin/${_bin} \
		${BOOTSTRAPDIR}/bin/${_bin}.bin
	${_PBUILD} strip ${BOOTSTRAPDIR}/bin/${_bin}.bin
	${_PBUILD} cp ${WRKDIR}/rustc-bootstrap-${MACHINE_ARCH}-${BV}/bin/${_bin} \
		${BOOTSTRAPDIR}/bin/${_bin}
	LD_LIBRARY_PATH="${BOOTSTRAPDIR}/lib" \
	ldd ${BOOTSTRAPDIR}/bin/${_bin}.bin \
		| sed -ne 's,.* \(/.*/lib/lib.*\.so.[.0-9]*\)$$,\1,p' \
		| xargs -r -J % ${_PBUILD} cp % ${BOOTSTRAPDIR}/lib || true
.endfor
.include <bsd.port.mk>
