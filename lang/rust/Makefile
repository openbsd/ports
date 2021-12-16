# $OpenBSD: Makefile,v 1.137 2021/12/16 07:43:24 semarie Exp $

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

V =			1.57.0
DISTNAME =		rustc-${V}-src
REVISION-main =		0

# rustc bootstrap version
BV-aarch64 =		1.57.0-20211215
BV-amd64 =		1.57.0-20211214
BV-i386 =		1.57.0-20211214
BV-sparc64 =		1.57.0-20211214
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

WANTLIB-main =		${COMPILER_LIBCXX} c crypto curl git2 m pthread ssh2 ssl z
WANTLIB-gdb =
WANTLIB-clippy =	${COMPILER_LIBCXX} c m pthread
WANTLIB-rustfmt =	${COMPILER_LIBCXX} c m pthread

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

# per MACHINE_ARCH configuration
TRIPLE_ARCH-aarch64 =	aarch64-unknown-openbsd
TRIPLE_ARCH-amd64 =	x86_64-unknown-openbsd
TRIPLE_ARCH-i386 =	i686-unknown-openbsd
TRIPLE_ARCH-sparc64 =	sparc64-unknown-openbsd
TRIPLE_ARCH =	${TRIPLE_ARCH-${MACHINE_ARCH}}

SUBST_VARS +=		TRIPLE_ARCH \
			V

# list of libraries with a hash in plist
# the last field is used to have a different hash for each library
LIBRUST_HASHES =	\
	addr2line		01 \
	adler			02 \
	alloc			03 \
	cfg_if			04 \
	compiler_builtins	05 \
	core			06 \
	getopts			07 \
	gimli			08 \
	hashbrown		09 \
	libc			0a \
	memchr			0b \
	miniz_oxide		0c \
	object			0d \
	panic_abort		0e \
	panic_unwind		0f \
	proc_macro		10 \
	rustc_demangle		11 \
	rustc_driver		12 \
	rustc_std_workspace_alloc	13 \
	rustc_std_workspace_core 	14 \
	rustc_std_workspace_std 	15 \
	std 			16 \
	std_detect		17 \
	test 			18 \
	unicode_width 		19 \
	unwind			20

# generate a stable hash and pass it to build environment
LIBRUST_HASH !=	echo '${FULLPKGNAME}:${TRIPLE_ARCH}' | sha1 | cut -c1-14
.for _name _number in ${LIBRUST_HASHES}
SUBST_VARS +=	LIBR_METADATA_${_name}
LIBR_METADATA_${_name} =	${LIBRUST_HASH}${_number}
LIBRUST_ARGS +=	${_name}=${LIBRUST_HASH}${_number}
.endfor

# on arches where the base compiler is clang: base-clang or ports-clang should be fine,
# as we need devel/llvm only for libs.
# on others archs, use ports-gcc as llvm libraries depends on libestdc++.so and libgcc.a.
COMPILER =		base-clang ports-gcc

MODULES +=		lang/python \
			gnu

MODPY_RUNDEP =		No

BUILD_DEPENDS +=	devel/cmake
BUILD_DEPENDS +=	shells/bash
BUILD_DEPENDS +=	devel/llvm
BUILD_DEPENDS +=	devel/ninja
BUILD_DEPENDS +=	devel/gdb

LIB_DEPENDS-main +=	${LIB_DEPENDS} \
			devel/libgit2/libgit2 \
			net/curl \
			security/libssh2

RUN_DEPENDS-main +=	devel/llvm
RUN_DEPENDS-gdb +=	lang/rust,-main \
			devel/gdb
RUN_DEPENDS-clippy +=	lang/rust,-main
RUN_DEPENDS-rustfmt +=	lang/rust,-main

MAKE_ENV +=	CARGO_HOME=${WRKBUILD}/cargo-home \
		TMPDIR=${WRKBUILD} \
		LIBGIT2_SYS_USE_PKG_CONFIG=1 \
		LIBSSH2_SYS_USE_PKG_CONFIG=1

# XXX temporary workaround for 1.52.0
# https://github.com/rust-lang/rust/issues/84970
MAVE_ENV +=	CARGO_INCREMENTAL=0

# cargo assert() on i386 with standard libz
.if "${MACHINE_ARCH}" == "i386"
MAKE_ENV += 	LIBZ_SYS_STATIC=1
.endif

TEST_ENV +=	RUST_BACKTRACE=0

.ifdef DEBUG
MAKE_ENV +=	RUST_BACKTRACE=1
MAKE_ENV +=	RUST_LOG=info
.endif

# build/configuration variables
PATCHORIG =		.openbsd.orig
SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

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
	echo 'changelog-seen = 2' >${WRKBUILD}/config.toml
	echo '[build]' >>${WRKBUILD}/config.toml
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
	echo 'tools = ["cargo", "clippy", "rustfmt"]' >>${WRKBUILD}/config.toml
	echo 'docs = false' >>${WRKBUILD}/config.toml
	echo 'verbose = 2' >>${WRKBUILD}/config.toml

	echo '[install]' >>${WRKBUILD}/config.toml
	echo 'prefix = "${LOCALBASE}"' >>${WRKBUILD}/config.toml
	echo 'sysconfdir = "${SYSCONFDIR}"' >>${WRKBUILD}/config.toml
	echo 'mandir = "man"' >>${WRKBUILD}/config.toml

	echo '[rust]' >>${WRKBUILD}/config.toml
	echo 'channel = "stable"' >>${WRKBUILD}/config.toml
	echo 'codegen-tests = false' >>${WRKBUILD}/config.toml
	echo 'verbose-tests = true' >>${WRKBUILD}/config.toml
	echo 'deny-warnings = false' >>${WRKBUILD}/config.toml

	echo '[dist]' >>${WRKBUILD}/config.toml
	echo 'src-tarball = false' >>${WRKBUILD}/config.toml
	echo 'compression-formats = ["gz"]' >>${WRKBUILD}/config.toml

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
		library/std src/librustc cargo clippy rustfmt
	rm -rf -- ${WRKBUILD}/build/tmp

COMPONENTS ?=	rustc-${V} rust-std-${V} cargo-${V} \
		clippy-${V} rustfmt-${V}
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
	# cleanup
	rm ${PREFIX}/bin/rust-lldb \
		${PREFIX}/lib/rustlib/{install.log,uninstall.sh,rust-installer-version} \
		${PREFIX}/lib/rustlib/components \
		${PREFIX}/lib/rustlib/manifest-*
	# rehash libraries to have stables filenames
	cd ${PREFIX} && /bin/sh "${.CURDIR}/files/rehash.sh" ${TRIPLE_ARCH} ${LIBRUST_ARGS}
	# replace libraries by link
	for lib in ${PREFIX}/lib/lib*.* ; do \
		libname=$${lib##*/} ; \
		if [ -e ${PREFIX}/lib/rustlib/${TRIPLE_ARCH}/lib/$${libname} ] ; then \
			ln -fs rustlib/${TRIPLE_ARCH}/lib/$${libname} \
				${PREFIX}/lib/$${libname} ; \
		fi ; \
	done
	# replace rust-llvm-dwp binary by a link
	rm ${PREFIX}/lib/rustlib/${TRIPLE_ARCH}/bin/rust-llvm-dwp
	ln -s ${LOCALBASE}/bin/llvm-dwp \
		${PREFIX}/lib/rustlib/${TRIPLE_ARCH}/bin/rust-llvm-dwp
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
		COMPONENTS="rustc-${V} rust-std-${V} cargo-${V}" \
		FAKE_SETUP=""
	${_PBUILD} rm -rf ${BOOTSTRAPDIR}/{man,share} \
		${BOOTSTRAPDIR}/bin/rust-gdb*
	${_PBUILD} llvm-strip ${BOOTSTRAPDIR}/lib/lib*.so \
		${BOOTSTRAPDIR}/lib/rustlib/${TRIPLE_ARCH}/lib/lib*.so
.for _bin in rustc rustdoc cargo
	${_PBUILD} llvm-strip ${BOOTSTRAPDIR}/bin/${_bin}
	ldd ${BOOTSTRAPDIR}/bin/${_bin} \
		| sed -ne 's,.* \(/.*/lib/lib.*\.so.[.0-9]*\)$$,\1,p' \
		| xargs -r -J % ${_PBUILD} cp % ${BOOTSTRAPDIR}/lib || true
	${BOOTSTRAPDIR}/bin/${_bin} -vV >/dev/null
.endfor

.include <bsd.port.mk>
