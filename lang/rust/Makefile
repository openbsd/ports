# $OpenBSD: Makefile,v 1.52 2017/10/17 17:19:24 danj Exp $

# snapshots are only available for amd64 and i386, for now
ONLY_FOR_ARCHS =	amd64 i386

DPB_PROPERTIES =	parallel

COMMENT-main =		compiler for Rust Language
COMMENT-doc =		html documentation for rustc

V =			1.21.0
CARGO_V =		0.22.0
DISTNAME =		rustc-${V}-src

# rustc bootstrap version
BV-amd64 =		1.21.0-20171011
BV-i386 =		1.21.0-20171011
BV =			${BV-${MACHINE_ARCH}}

PKGNAME =		rust-${V}
PKGNAME-main =		rust-${V}
PKGNAME-doc =		rust-doc-${V}

MULTI_PACKAGES =	-main -doc

CATEGORIES =		lang

HOMEPAGE =		http://www.rust-lang.org/
MAINTAINER =		Sebastien Marie <semarie@online.fr>

# both MIT and Apache2.0
# with portions covered by various BSD-like licenses
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main =		${MODGCC4_CPPWANTLIB} c crypto curl git2 m pthread ssh2 ssl
WANTLIB-doc =

MASTER_SITES =		https://static.rust-lang.org/dist/ \
			https://dev-static.rust-lang.org/dist/
MASTER_SITES0 =		http://kapouay.odns.fr/pub/rust/

DIST_SUBDIR =		rust
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			${BOOTSTRAP}

BOOTSTRAP =		${BOOTSTRAP-${MACHINE_ARCH}}
.for m in ${ONLY_FOR_ARCHS}
BOOTSTRAP-$m =		rustc-bootstrap-${m}-${BV-$m}.tar.gz:0
SUPDISTFILES +=		${BOOTSTRAP-$m}
.endfor

# per MACHINE_ARCH configuration
.if "${MACHINE_ARCH}" == "amd64"
TRIPLE_ARCH =		x86_64-unknown-openbsd
PKG_ARGS +=		-Damd64=1 -Di386=0
.elif "${MACHINE_ARCH}" == "i386"
TRIPLE_ARCH =		i686-unknown-openbsd
PKG_ARGS +=		-Damd64=0 -Di386=1
.endif

MODULES +=		gcc4 \
			lang/python \
			gnu
MODPY_RUNDEP =		No

BUILD_DEPENDS +=	devel/cmake
#BUILD_DEPENDS +=	devel/llvm

.if ! ${BUILD_DEPENDS:Mdevel/llvm}
# use ninja to compile embedded llvm
BUILD_DEPENDS +=	devel/ninja
.endif

LIB_DEPENDS +=		devel/libgit2/libgit2 \
			net/curl \
			security/libssh2

# libgcc.a path
CONFIG =		${MACHINE_ARCH}-unknown-openbsd${OSREV}
SYSV =			4.2.1
SYSLIBPATH =		/usr/lib/gcc-lib/${CONFIG}/${SYSV}

# rustllvm need c++11
MODGCC4_LANGS =		c++
MODGCC4_ARCHS =		*	# patches required for base clang

# need to be keep in sync
LIBESTDC_VERSION =	17.1

# note: RUSTFLAGS extra flags passed to rust
# 		-L modgcc-libs : disambiguate libestdc++.so
MAKE_ENV =		RUSTFLAGS="-L ${WRKDIR}/modgcc-libs" \
			LIBGIT2_SYS_USE_PKG_CONFIG=1

# build/configuration variables
PATCHORIG =		.openbsd.orig
SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

# need for libbacktrace
USE_LIBTOOL =		gnu

TEST_DEPENDS +=		${FULLPKGNAME-main}:${BUILD_PKGPATH} \
			devel/git

TEST_TARGET ?=	src/test/run-pass \
		src/test/compile-fail \
		src/test/parse-fail \
		src/test/run-fail \
		src/test/mir-opt \
		src/test/incremental \
		src/test/ui \
		src/test/compile-fail-fulldeps \
		src/test/run-make \
		src/test/rustdoc \
		src/test/pretty \
		src/test/run-pass/pretty \
		src/test/run-fail/pretty \
		path/to/nowhere

# - disable vendor checksum checks
# - SUBSTR cargo testsuite
SUBST_VARS +=	WRKBUILD
post-patch:
	sed -ie 's/"files":{[^}]*}/"files":{}/' \
		${WRKSRC}/src/vendor/*/.cargo-checksum.json
	${SUBST_CMD} ${WRKSRC}/src/tools/cargo/tests/cargotest/support/paths.rs

# - check datasize limit before configuring (and building)
pre-configure:
	@if [ `ulimit -d` -lt 2097152 ]; then \
		echo datasize limit is too low - amd64 build takes approx 2GB; \
		exit 1; fi

# - generate config.toml file
# - copy libestdc++ from MODGCC4 to specific directory
#   in order to disambiguate version linking (having multiple libestdc++
#   at build time)
do-configure:
	echo '[build]' >${WRKBUILD}/config.toml
	echo 'rustc = "${WRKDIR}/rustc-bootstrap-${MACHINE_ARCH}-${BV}/bin/rustc"' \
		>>${WRKBUILD}/config.toml
	echo 'cargo = "${WRKDIR}/rustc-bootstrap-${MACHINE_ARCH}-${BV}/bin/cargo"' \
		>>${WRKBUILD}/config.toml
	echo 'python = "${MODPY_BIN}"' >>${WRKBUILD}/config.toml
	echo 'vendor = true' >>${WRKBUILD}/config.toml
	echo 'extended = true' >>${WRKBUILD}/config.toml
	echo 'verbose = 2' >>${WRKBUILD}/config.toml

	echo '[install]' >>${WRKBUILD}/config.toml
	echo 'prefix = "${LOCALBASE}"' >>${WRKBUILD}/config.toml
	echo 'sysconfdir = "${SYSCONFDIR}"' >>${WRKBUILD}/config.toml
	echo 'mandir = "man"' >>${WRKBUILD}/config.toml

	echo '[rust]' >>${WRKBUILD}/config.toml
	echo 'channel = "stable"' >>${WRKBUILD}/config.toml
	echo 'rpath = false' >>${WRKBUILD}/config.toml
	echo 'codegen-tests = false' >>${WRKBUILD}/config.toml

	echo '[dist]' >>${WRKBUILD}/config.toml
	echo 'src-tarball = false' >>${WRKBUILD}/config.toml

	echo '[llvm]' >>${WRKBUILD}/config.toml
	echo 'static-libstdcpp = false' >>${WRKBUILD}/config.toml
	echo 'ninja = true' >>${WRKBUILD}/config.toml

	echo '[target.${TRIPLE_ARCH}]' >>${WRKBUILD}/config.toml
.if ${BUILD_DEPENDS:Mdevel/llvm}
	echo 'llvm-config = "${LOCALBASE}/bin/llvm-config"' \
		>>${WRKBUILD}/config.toml
.endif

	rm -rf ${WRKDIR}/modgcc-libs
	mkdir -p ${WRKDIR}/modgcc-libs
	cp ${LOCALBASE}/lib/libestdc++.so.${LIBESTDC_VERSION} \
		${WRKDIR}/modgcc-libs

BUILD_BIN = cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
	    ${MODPY_BIN} ${WRKSRC}/x.py

do-build:
	${BUILD_BIN} dist --jobs=${MAKE_JOBS}

COMPONENTS ?=	rustc-${V} rust-std-${V} rust-docs-${V} cargo-${CARGO_V}
do-install:
	rm -rf ${WRKBUILD}/_extractdist
.for _c in ${COMPONENTS}
	mkdir ${WRKBUILD}/_extractdist
	cd ${WRKBUILD}/_extractdist && tar zxf \
		${WRKBUILD}/build/dist/${_c}-${TRIPLE_ARCH}.tar.gz
	cd ${WRKBUILD}/_extractdist/${_c}-${TRIPLE_ARCH} && ./install.sh \
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
	# make a link to libgcc.a inside rustlib
	ln -fs ${SYSLIBPATH}/libgcc.a \
		${PREFIX}/lib/rustlib/${TRIPLE_ARCH}/lib
	# compile python stuff
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/lib/rustlib/etc

do-test:
	${BUILD_BIN} test --jobs=${MAKE_JOBS} ${TEST_TARGET}

# bootstrap target permits to regenerate the bootstrap archive
BOOTSTRAPDIR=${WRKDIR}/rustc-bootstrap-${MACHINE_ARCH}-${V}-new
bootstrap: build
	rm -rf ${BOOTSTRAPDIR}
	mkdir -p ${BOOTSTRAPDIR}/{bin,lib}
	${MAKE} clean=fake
	${MAKE} fake \
		PREFIX="${BOOTSTRAPDIR}" \
		COMPONENTS="rustc-${V} rust-std-${V} cargo-${CARGO_V}" \
		FAKE_SETUP=""
	rm -rf ${BOOTSTRAPDIR}/{man,share} \
		${BOOTSTRAPDIR}/bin/rust-gdb
	strip ${BOOTSTRAPDIR}/lib/lib*.so \
		${BOOTSTRAPDIR}/lib/rustlib/${TRIPLE_ARCH}/lib/lib*.so
.for _bin in rustc rustdoc cargo
	mv ${BOOTSTRAPDIR}/bin/${_bin} \
		${BOOTSTRAPDIR}/bin/${_bin}.bin
	strip ${BOOTSTRAPDIR}/bin/${_bin}.bin
	cp ${WRKDIR}/rustc-bootstrap-${MACHINE_ARCH}-${BV}/bin/${_bin} \
		${BOOTSTRAPDIR}/bin/${_bin}
	LD_LIBRARY_PATH="${BOOTSTRAPDIR}/lib" \
		ldd ${BOOTSTRAPDIR}/bin/${_bin}.bin \
		| sed -ne 's,.* \(/.*/lib/lib.*\.so.[.0-9]*\)$$,\1,p' \
		| xargs -r -J % cp % ${BOOTSTRAPDIR}/lib || true
.endfor
.include <bsd.port.mk>
