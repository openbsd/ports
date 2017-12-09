# $OpenBSD: Makefile,v 1.55 2017/12/09 23:04:51 sthen Exp $

# snapshots are only available for amd64 and i386, for now.
# however, it uses too much memory to have a useful success rate
# in i386 bulk builds, so disabled there now.
ONLY_FOR_ARCHS =	amd64

DPB_PROPERTIES =	parallel

COMMENT-main =		compiler for Rust Language
COMMENT-doc =		html documentation for rustc

V =			1.22.1
CARGO_V =		0.23.0
DISTNAME =		rustc-${V}-src

# rustc bootstrap version
BV-amd64 =		1.22.0-20171121
BV-i386 =		1.22.1-20171125
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

WANTLIB-main =		${COMPILER_LIBCXX} c crypto curl git2 m pthread ssh2 ssl z
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

MODULES +=		lang/python \
			gnu
MODPY_RUNDEP =		No

BUILD_DEPENDS +=	devel/cmake
BUILD_DEPENDS +=	shells/bash
BUILD_DEPENDS +=	devel/llvm

.if ! ${BUILD_DEPENDS:Mdevel/llvm}
# use ninja to compile embedded llvm
BUILD_DEPENDS +=	devel/ninja
.endif

LIB_DEPENDS +=		devel/libgit2/libgit2 \
			net/curl \
			security/libssh2

MAKE_ENV =	LIBGIT2_SYS_USE_PKG_CONFIG=1

# build/configuration variables
PATCHORIG =		.openbsd.orig
SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

# need for libbacktrace
USE_LIBTOOL =		gnu

TEST_DEPENDS +=		${FULLPKGNAME-main}:${BUILD_PKGPATH} \
			devel/git

# - disable vendor checksum checks
# - SUBSTR cargo testsuite
SUBST_VARS +=	WRKBUILD
post-patch:
	sed -i 's/"files":{[^}]*}/"files":{}/' \
		${WRKSRC}/src/vendor/*/.cargo-checksum.json
	${SUBST_CMD} ${WRKSRC}/src/tools/cargo/tests/cargotest/support/paths.rs

# - check datasize limit before configuring (and building)
pre-configure:
	@if [ `ulimit -d` -lt 3145728 ]; then \
		echo datasize limit is too low - amd64 build takes approx 4GB; \
		exit 1; fi

# - generate config.toml file
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
.if "${MACHINE_ARCH}" == "i386"
	echo 'codegen-units = 16' >>${WRKBUILD}/config.toml
.endif

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
	${BUILD_BIN} test --jobs=${MAKE_JOBS}

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
