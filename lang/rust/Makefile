# $OpenBSD: Makefile,v 1.37 2017/02/15 12:52:35 landry Exp $

# snapshots are only available for amd64 and i386, for now
ONLY_FOR_ARCHS =	amd64 i386

COMMENT-main =		compiler for Rust Language
COMMENT-doc =		html documentation for rustc

V =			1.15.1
DISTNAME =		rustc-${V}-src

# rustc bootstrap version
RBV-amd64 =		1.15.0-20170203
RBV-i386 =		1.15.0-20170204
RBV =			${RBV-${MACHINE_ARCH}}

# cargo bootstrap version
CBV-amd64 =		0.16.0-20170213
CBV-i386 =		0.16.0-20170213
CBV =			${CBV-${MACHINE_ARCH}}

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

WANTLIB-main =		${WANTLIB} c m pthread z
WANTLIB-doc =

MASTER_SITES =		https://static.rust-lang.org/dist/
MASTER_SITES0 =		http://kapouay.odns.fr/pub/rust/

DIST_SUBDIR =		rust
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			${RBOOTSTRAP} \
			${CBOOTSTRAP}

RBOOTSTRAP =		${RBOOTSTRAP-${MACHINE_ARCH}}
CBOOTSTRAP =		${CBOOTSTRAP-${MACHINE_ARCH}}
.for m in ${ONLY_FOR_ARCHS}
RBOOTSTRAP-$m =		rustc-bootstrap-${m}-${RBV-$m}.tar.gz:0
CBOOTSTRAP-$m =		../cargo/cargo-bootstrap-${m}-${CBV-$m}.tar.gz:0
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
BUILD_DEPENDS +=	devel/cmake
MODPY_RUNDEP =		No

# use embedded or ports version of LLVM
PORTS_LLVM ?=	No
.if ${PORTS_LLVM:L:Myes}
BUILD_DEPENDS +=	devel/llvm<4
.else
BUILD_DEPENDS +=	devel/ninja
.endif

# rustllvm need c++11
MODGCC4_LANGS =		c++
MODGCC4_ARCHS =		*

# need to be keep in sync
LIBESTDC_VERSION =	17.0

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

# - check datasize limit before configuring (and building)
pre-configure:
	@if [ `ulimit -d` -lt 1572864 ]; then \
		echo datasize limit is too low - amd64 build takes approx 1.5GB; \
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
	
.if ${PORTS_LLVM:L:Myes}
	echo '[target.${TRIPLE_ARCH}]' >>${WRKBUILD}/config.toml
	echo 'llvm-config = "${LOCALBASE}/bin/llvm-config"' \
		>>${WRKBUILD}/config.toml
.else
	echo '[llvm]' >>${WRKBUILD}/config.toml
	echo 'static-libstdcpp = false' >>${WRKBUILD}/config.toml
	echo 'ninja = true' >>${WRKBUILD}/config.toml
.endif
	
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

do-test:
	${BUILD_BIN} test --verbose --jobs=${MAKE_JOBS}

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
		${BOOTSTRAPDIR}/bin/{rust-gdb,rustdoc}
	mv ${BOOTSTRAPDIR}/bin/rustc{,.bin}
	strip ${BOOTSTRAPDIR}/bin/rustc.bin \
		${BOOTSTRAPDIR}/lib/lib*.so \
		${BOOTSTRAPDIR}/lib/rustlib/${TRIPLE_ARCH}/lib/lib*.so
	cp ${WRKDIR}/rustc-bootstrap-${MACHINE_ARCH}-${RBV}/bin/rustc \
		${BOOTSTRAPDIR}/bin/rustc
	LD_LIBRARY_PATH="${BOOTSTRAPDIR}/lib" \
		ldd ${BOOTSTRAPDIR}/bin/rustc.bin \
		| sed -ne 's,.* \(/.*/lib/lib.*\.so.[.0-9]*\)$$,\1,p' \
		| xargs -r -J % cp % \
			${BOOTSTRAPDIR}/lib

.include <bsd.port.mk>
