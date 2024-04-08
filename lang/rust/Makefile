ONLY_FOR_ARCHS =	${RUST_ARCHS}

BROKEN-powerpc64 =	needs new bootstrap

.if "${MACHINE_ARCH}" == "i386"
DPB_PROPERTIES =	lonesome
.else
DPB_PROPERTIES =	parallel
.endif

COMMENT-main =		compiler for Rust Language
COMMENT-gdb =		Rust debugger through gdb
COMMENT-clippy =	Rust linter
COMMENT-rustfmt =	Rust code formatter
COMMENT-bootstrap =	Rust binary bootstrap
COMMENT-src =		Rust source component

V =			1.77.1
DISTNAME =		rustc-${V}-src
REVISION-main =		0

# rustc bootstrap version
BV-aarch64 =		1.77.0-20240320
BV-amd64 =		1.77.0-20240318
BV-i386 =		1.77.0-20240319
BV-powerpc64 =		1.65.0-20221213
BV-riscv64 =		1.77.0-20240401
BV-sparc64 =		1.76.0p0-20240318
BV =			${BV-${MACHINE_ARCH}}

PKGNAME =		rust-${V}
PKGNAME-main =		rust-${V}
PKGNAME-gdb =		rust-gdb-${V}
PKGNAME-clippy =	rust-clippy-${V}
PKGNAME-rustfmt =	rust-rustfmt-${V}
PKGNAME-bootstrap =	rust-bootstrap-${V}
PKGNAME-src =		rust-src-${V}

MULTI_PACKAGES =	-main -gdb -clippy -rustfmt -bootstrap -src

CATEGORIES =		lang

HOMEPAGE =		https://www.rust-lang.org/
MAINTAINER =		Sebastien Marie <semarie@kapouay.eu.org>

# both MIT and Apache2.0
# with portions covered by various BSD-like licenses
PERMIT_PACKAGE =	Yes

WANTLIB-main =		${COMPILER_LIBCXX} c crypto curl m pthread ssh2 ssl z
WANTLIB-gdb =
WANTLIB-clippy =	${COMPILER_LIBCXX} c m pthread
WANTLIB-rustfmt =	${COMPILER_LIBCXX} c m pthread

SITES =			https://static.rust-lang.org/dist/ \
			https://dev-static.rust-lang.org/dist/
SITES.bsp =		http://kapouay.eu.org/pub/rust/

FLAVOR ?=
PSEUDO_FLAVORS =	native_bootstrap

DIST_SUBDIR =		rust
EXTRACT_SUFX =		.tar.xz
.if ${FLAVOR} == native_bootstrap
BUILD_DEPENDS +=	lang/rust
.else
DISTFILES.bsp +=	${BOOTSTRAP}
.endif

.include <bsd.port.arch.mk>
BOOTSTRAP =		${BOOTSTRAP-${MACHINE_ARCH}}
.for m in ${ONLY_FOR_ARCHS}
BOOTSTRAP-$m =		rustc-bootstrap-${m}-${BV-$m}.tar.lz
SUPDISTFILES.bsp +=	${BOOTSTRAP-$m}
.endfor

# per MACHINE_ARCH configuration
TRIPLE_ARCH-aarch64 =	aarch64-unknown-openbsd
TRIPLE_ARCH-amd64 =	x86_64-unknown-openbsd
TRIPLE_ARCH-i386 =	i686-unknown-openbsd
TRIPLE_ARCH-powerpc64 =	powerpc64-unknown-openbsd
TRIPLE_ARCH-riscv64 =	riscv64gc-unknown-openbsd
TRIPLE_ARCH-sparc64 =	sparc64-unknown-openbsd
TRIPLE_ARCH =	${TRIPLE_ARCH-${MACHINE_ARCH}}

USE_EMB_LLVM ?=		No

# flags to use when building LLVM
LLVMCXXFLAGS-aarch64 =	-fno-ret-protector
LLVMCXXFLAGS-amd64 =	-fno-ret-protector -mno-retpoline
LLVMCXXFLAGS-i386 =	-fno-ret-protector -mno-retpoline
LLVMCXXFLAGS-mips64 =	-fno-ret-protector -fomit-frame-pointer
LLVMCXXFLAGS-mips64el =	-fno-ret-protector -fomit-frame-pointer
LLVMCXXFLAGS-powerpc =	-fno-ret-protector
LLVMCXXFLAGS =		${LLVMCXXFLAGS-${MACHINE_ARCH}}

SUBST_VARS +=		TRIPLE_ARCH \
			V

# list of libraries with a hash in plist
LIBRUST_REHASH +=	addr2line
LIBRUST_REHASH +=	adler
LIBRUST_REHASH +=	alloc
LIBRUST_REHASH +=	cfg_if
LIBRUST_REHASH +=	compiler_builtins
LIBRUST_REHASH +=	core
LIBRUST_REHASH +=	getopts
LIBRUST_REHASH +=	gimli
LIBRUST_REHASH +=	hashbrown
LIBRUST_REHASH +=	libc
LIBRUST_REHASH +=	memchr
LIBRUST_REHASH +=	miniz_oxide
LIBRUST_REHASH +=	object
LIBRUST_REHASH +=	panic_abort
LIBRUST_REHASH +=	panic_unwind
LIBRUST_REHASH +=	proc_macro
LIBRUST_REHASH +=	rustc_demangle
LIBRUST_REHASH +=	rustc_driver
LIBRUST_REHASH +=	rustc_std_workspace_alloc
LIBRUST_REHASH +=	rustc_std_workspace_core
LIBRUST_REHASH +=	rustc_std_workspace_std
LIBRUST_REHASH +=	std
LIBRUST_REHASH +=	std_detect
LIBRUST_REHASH +=	sysroot
LIBRUST_REHASH +=	test
LIBRUST_REHASH +=	unicode_width
LIBRUST_REHASH +=	unwind

# generate a stable hash and pass it to build environment
LIBRUST_HASH !=	echo '${PKGNAME}:${REVISION}:${TRIPLE_ARCH}' | sha1 | cut -c1-14
SUBST_VARS +=	LIBRUST_HASH

# on arches where the base compiler is clang: base-clang or ports-clang should be fine,
# as we need devel/llvm only for libs.
# on others archs, use ports-gcc as llvm libraries depends on libestdc++.so and libgcc.a.
COMPILER =		base-clang ports-gcc

MODULES +=		lang/python \
			gnu

MODPY_RUNDEP =		No

BUILD_DEPENDS +=	devel/cmake
BUILD_DEPENDS +=	shells/bash
BUILD_DEPENDS +=	devel/ninja
BUILD_DEPENDS +=	devel/gdb

.if !${USE_EMB_LLVM:L:Myes}
MODULES +=			lang/clang
MODCLANG_VERSION =		16
MODCLANG_COMPILER_LINKS =	No
.else
WANTLIB-main +=		execinfo
.endif

LIB_DEPENDS-main +=	${LIB_DEPENDS} \
			net/curl \
			security/libssh2

RUN_DEPENDS-gdb +=	lang/rust,-main \
			devel/gdb
RUN_DEPENDS-clippy +=	lang/rust,-main
RUN_DEPENDS-rustfmt +=	lang/rust,-main
RUN_DEPENDS-src +=	lang/rust,-main

PKG_ARCH-src =		*

MAKE_ENV +=	LD_LIBRARY_PATH="${WRKDIR}/rustc-bootstrap-${MACHINE_ARCH}-${BV}/lib" \
		CARGO_HOME=${WRKBUILD}/cargo-home \
		TMPDIR=${WRKBUILD} \
		LIBSSH2_SYS_USE_PKG_CONFIG=1

TEST_ENV +=	RUST_BACKTRACE=0

.ifdef DEBUG
MAKE_ENV +=	RUST_BACKTRACE=1
MAKE_ENV +=	RUST_LOG=info
.endif

# build/configuration variables
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
	echo 'change-id = 118703' >${WRKBUILD}/config.toml
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
	echo 'tools = ["cargo", "clippy", "rustdoc", "rustfmt"]' >>${WRKBUILD}/config.toml
	echo 'docs = false' >>${WRKBUILD}/config.toml
	echo 'verbose = 2' >>${WRKBUILD}/config.toml
	echo 'host = ["${TRIPLE_ARCH}"]' >>${WRKBUILD}/config.toml
	echo 'target = ["${TRIPLE_ARCH}"]' >>${WRKBUILD}/config.toml

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
	echo 'compression-formats = ["gz"]' >>${WRKBUILD}/config.toml

	echo '[llvm]' >>${WRKBUILD}/config.toml
	echo 'static-libstdcpp = false' >>${WRKBUILD}/config.toml
	echo 'ninja = true' >>${WRKBUILD}/config.toml
	echo 'cxxflags = "${CXXFLAGS} ${LLVMCXXFLAGS}"' \
		>>${WRKBUILD}/config.toml

	echo '[target.${TRIPLE_ARCH}]' >>${WRKBUILD}/config.toml
.if !${USE_EMB_LLVM:L:Myes}
	echo 'llvm-config = "${LOCALBASE}/bin/llvm-config-${MODCLANG_VERSION}"' \
		>>${WRKBUILD}/config.toml
.endif

BUILD_BIN = cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
	    ${MODPY_BIN} ${WRKSRC}/x.py
TEST_BIN = cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${TEST_ENV} \
	    ${MODPY_BIN} ${WRKSRC}/x.py

do-build:
	${BUILD_BIN} dist --jobs=${MAKE_JOBS} \
		rust-std rustc cargo clippy rustfmt rust-src
	rm -rf -- ${WRKBUILD}/build/tmp

COMPONENTS =	rustc-${V}-${TRIPLE_ARCH} \
		rust-std-${V}-${TRIPLE_ARCH} \
		cargo-${V}-${TRIPLE_ARCH} \
		clippy-${V}-${TRIPLE_ARCH} \
		rustfmt-${V}-${TRIPLE_ARCH} \
		rust-src-${V}

do-install:
	rm -rf ${WRKBUILD}/_extractdist
.for _c in ${COMPONENTS}
	mkdir ${WRKBUILD}/_extractdist
	cd ${WRKBUILD}/_extractdist && tar zxf \
		${WRKBUILD}/build/dist/${_c}.tar.gz
	cd ${WRKBUILD}/_extractdist/${_c} && \
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
	-find ${PREFIX}/lib/rustlib/src -name '*${PATCHORIG}' -delete
	# rehash libraries to have stables filenames
	cd ${PREFIX} && ${MODPY_BIN} "${.CURDIR}/files/rehash.py" \
		${TRIPLE_ARCH} \
		${LIBRUST_HASH} \
		${LIBRUST_REHASH}
	# create a bootstrap tarball
	cd ${PREFIX} && pax -w \
		-f ${PREFIX}/lib/rustc-bootstrap-${MACHINE_ARCH}.tar \
		-s ',^,rustc-bootstrap-${MACHINE_ARCH}-${V}/,' \
		bin/{rustc,rustdoc,cargo} \
		lib/rustlib/${TRIPLE_ARCH}/
	cd ${PREFIX} && ldd bin/{rustc,rustdoc,cargo} \
	| awk '$$3 == "rlib" { print $$7 }' | sort -u \
	| pax -wa \
		-f ${PREFIX}/lib/rustc-bootstrap-${MACHINE_ARCH}.tar \
		-s ',^.*/,rustc-bootstrap-${MACHINE_ARCH}-${V}/lib/,' \
	# replace libraries by link
	for lib in ${PREFIX}/lib/lib*.* ; do \
		libname=$${lib##*/} ; \
		if [ -e ${PREFIX}/lib/rustlib/${TRIPLE_ARCH}/lib/$${libname} ] ; then \
			ln -fs rustlib/${TRIPLE_ARCH}/lib/$${libname} \
				${PREFIX}/lib/$${libname} ; \
		fi ; \
	done
	# install cargo bash-completion
	mkdir -p ${PREFIX}/share/bash-completion/completions
	mv ${PREFIX}/etc/bash_completion.d/cargo \
		${PREFIX}/share/bash-completion/completions
	-rmdir -p ${PREFIX}/etc/bash_completion.d
	# compile python stuff
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/lib/rustlib/etc

do-test:
	${TEST_BIN} test --jobs=${MAKE_JOBS} --no-fail-fast

.include <bsd.port.mk>
