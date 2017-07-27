# $OpenBSD: Makefile,v 1.46 2017/07/27 09:55:45 sthen Exp $

# snapshots are only available for amd64 and i386, for now
ONLY_FOR_ARCHS =	amd64 i386

DPB_PROPERTIES =	parallel

COMMENT-main =		compiler for Rust Language
COMMENT-doc =		html documentation for rustc

V =			1.18.0
DISTNAME =		rustc-${V}-src

# rustc bootstrap version
RBV-amd64 =		1.18.0-20170611
RBV-i386 =		1.18.0-20170611
RBV =			${RBV-${MACHINE_ARCH}}

# cargo bootstrap version
CBV-amd64 =		0.19.0-20170611
CBV-i386 =		0.19.0-20170611
CBV =			${CBV-${MACHINE_ARCH}}

PKGNAME =		rust-${V}
PKGNAME-main =		rust-${V}
PKGNAME-doc =		rust-doc-${V}
REVISION-doc =		0
REVISION-main =		0

MULTI_PACKAGES =	-main -doc

CATEGORIES =		lang

HOMEPAGE =		http://www.rust-lang.org/
MAINTAINER =		Sebastien Marie <semarie@online.fr>

# both MIT and Apache2.0
# with portions covered by various BSD-like licenses
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main =		${COMPILER_LIBCXX} c m pthread z
WANTLIB-doc =

MASTER_SITES =		https://static.rust-lang.org/dist/
MASTER_SITES0 =		http://kapouay.odns.fr/pub/rust/
MASTER_SITES1 =		http://kapouay.odns.fr/pub/cargo/

DIST_SUBDIR =		rust
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			${RBOOTSTRAP} \
			${CBOOTSTRAP}

RBOOTSTRAP =		${RBOOTSTRAP-${MACHINE_ARCH}}
CBOOTSTRAP =		${CBOOTSTRAP-${MACHINE_ARCH}}
.for m in ${ONLY_FOR_ARCHS}
RBOOTSTRAP-$m =		rustc-bootstrap-${m}-${RBV-$m}.tar.gz:0
CBOOTSTRAP-$m =		cargo-bootstrap-${m}-${CBV-$m}.tar.gz:1
SUPDISTFILES +=		${RBOOTSTRAP-$m} \
			${CBOOTSTRAP-$m}
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
			lang/python
MODPY_RUNDEP =		No

BUILD_DEPENDS +=	devel/llvm \
			devel/cmake

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
MAKE_ENV =		RUSTFLAGS="-L ${WRKDIR}/modgcc-libs"

# build/configuration variables
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
	echo 'rustc = "${WRKDIR}/rustc-bootstrap-${MACHINE_ARCH}-${RBV}/bin/rustc"' \
		>>${WRKBUILD}/config.toml
	echo 'cargo = "${WRKDIR}/cargo-bootstrap-${MACHINE_ARCH}-${CBV}/cargo"' \
		>>${WRKBUILD}/config.toml
	echo 'prefix = "${LOCALBASE}"' >>${WRKBUILD}/config.toml
	echo 'vendor = true' >>${WRKBUILD}/config.toml

	echo '[rust]' >>${WRKBUILD}/config.toml
	echo 'channel = "stable"' >>${WRKBUILD}/config.toml
	echo 'codegen-tests = false' >>${WRKBUILD}/config.toml

	echo '[dist]' >>${WRKBUILD}/config.toml
	echo 'src-tarball = false' >>${WRKBUILD}/config.toml

	echo '[target.${TRIPLE_ARCH}]' >>${WRKBUILD}/config.toml
	echo 'llvm-config = "${LOCALBASE}/bin/llvm-config"' \
		>>${WRKBUILD}/config.toml

	rm -rf ${WRKDIR}/modgcc-libs
	mkdir -p ${WRKDIR}/modgcc-libs
	cp ${LOCALBASE}/lib/libestdc++.so.${LIBESTDC_VERSION} \
		${WRKDIR}/modgcc-libs

BUILD_BIN = cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
	    ${MODPY_BIN} ${WRKSRC}/src/bootstrap/bootstrap.py

do-build:
	${BUILD_BIN} dist --verbose --jobs=${MAKE_JOBS}

COMPONENTS ?=	rustc rust-std rust-docs
do-install:
	rm -rf ${WRKBUILD}/_extractdist
.for _c in ${COMPONENTS}
	mkdir ${WRKBUILD}/_extractdist
	cd ${WRKBUILD}/_extractdist && tar zxf \
		${WRKBUILD}/build/dist/${_c}-${V}-${TRIPLE_ARCH}.tar.gz
	cd ${WRKBUILD}/_extractdist/${_c}-${V}-${TRIPLE_ARCH} && ./install.sh \
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
	# make a link to libgcc.a inside rustlib
	ln -fs ${SYSLIBPATH}/libgcc.a \
		${PREFIX}/lib/rustlib/${TRIPLE_ARCH}/lib

do-test:
	${BUILD_BIN} test --verbose --jobs=${MAKE_JOBS} ${TEST_TARGET}

# bootstrap target permits to regenerate the bootstrap archive
BOOTSTRAPDIR=${WRKDIR}/rustc-bootstrap-${MACHINE_ARCH}-${V}-new
bootstrap: build
	rm -rf ${BOOTSTRAPDIR}
	mkdir -p ${BOOTSTRAPDIR}/{bin,lib}
	${MAKE} clean=fake
	${MAKE} fake \
		PREFIX="${BOOTSTRAPDIR}" \
		COMPONENTS="rustc rust-std" \
		FAKE_SETUP=""
	rm -rf ${BOOTSTRAPDIR}/{man,share} \
		${BOOTSTRAPDIR}/bin/rust-gdb
	strip ${BOOTSTRAPDIR}/lib/lib*.so \
		${BOOTSTRAPDIR}/lib/rustlib/${TRIPLE_ARCH}/lib/lib*.so
.for _bin in rustc rustdoc
	mv ${BOOTSTRAPDIR}/bin/${_bin} \
		${BOOTSTRAPDIR}/bin/${_bin}.bin
	strip ${BOOTSTRAPDIR}/bin/${_bin}.bin
	cp ${WRKDIR}/rustc-bootstrap-${MACHINE_ARCH}-${RBV}/bin/${_bin} \
		${BOOTSTRAPDIR}/bin/${_bin}
	LD_LIBRARY_PATH="${BOOTSTRAPDIR}/lib" \
		ldd ${BOOTSTRAPDIR}/bin/${_bin}.bin \
		| sed -ne 's,.* \(/.*/lib/lib.*\.so.[.0-9]*\)$$,\1,p' \
		| xargs -r -J % cp % \
			${BOOTSTRAPDIR}/lib
.endfor
.include <bsd.port.mk>
