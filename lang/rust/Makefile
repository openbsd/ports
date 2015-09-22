# $OpenBSD: Makefile,v 1.10 2015/09/22 08:11:24 semarie Exp $

# snapshots are only available for amd64, for now
ONLY_FOR_ARCHS =	amd64
PKG_ARCH-doc =		*

COMMENT-main =		compiler for Rust Language
COMMENT-doc =		html documentation for rustc

V =			1.3.0
RUST_HASH =		198068b3
DISTNAME =		rustc-${V}-src

SUBST_VARS +=		RUST_HASH

PKGNAME =		rust-${V}
PKGNAME-main =		rust-${V}
PKGNAME-doc =		rust-doc-${V}

MULTI_PACKAGES =	-main -doc

# the snapshot version should be the version in src/snapshots.txt
SNAPSHOT-amd64 =	rust-stage0-2015-07-26-a5c12f4-openbsd-x86_64-8b21d574a65c38e7c7b0bbbb8d675d8a44cec214.tar.bz2

CATEGORIES =		lang

HOMEPAGE =		http://www.rust-lang.org/

MAINTAINER =		Sebastien Marie <semarie@openbsd.org>

# both MIT and Apache2.0
# with portions covered by various BSD-like licenses
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main =		${WANTLIB} c m pthread
WANTLIB-doc =

MASTER_SITES =		https://static.rust-lang.org/dist/
MASTER_SITES0 =		http://semarie.free.fr/rust/

DIST_SUBDIR =		rust
DISTFILES =		${DISTNAME}${EXTRACT_SUFX}
.if defined(SNAPSHOT-${MACHINE_ARCH})
DISTFILES +=            ${SNAPSHOT-${MACHINE_ARCH}}:0
.endif

SUPDISTFILES =		${SNAPSHOT-amd64}:0

WRKDIST =		${WRKDIR}/${DISTNAME:S/-src//}

# MACHINE_ARCH to TRIPLE_ARCH conversion
.if "${MACHINE_ARCH}" == "amd64"
TRIPLE_ARCH =		x86_64-unknown-openbsd
.endif
SUBST_VARS +=		TRIPLE_ARCH

MODULES +=		gcc4 \
			lang/python

# rustllvm need c++11
MODGCC4_LANGS =		c++
MODGCC4_ARCHS =		*

# need to be keep in sync
LIBESTDC_VERSION =	17.0

# note: VERBOSE permit to unhide Makefile processing
# 	RUSTFLAGS extra flags passed to rust
# 		-L modgcc-libs : disambiguate libestdc++.so
# 		-Z print-link-args : unhide link call
#       RUSTFLAGS_STAGE0 extra flags passed to stage0
#       	--sysroot force sysroot (due to limitation of us bootstrapper)
#       RUST_LOG helper
MAKE_ENV =		VERBOSE=1 \
			RUSTFLAGS="-L ${WRKDIR}/modgcc-libs -Z print-link-args" \
			RUSTFLAGS_STAGE0="--sysroot ${WRKBUILD}/${TRIPLE_ARCH}/stage0" \
			RUST_LOG="${RUST_LOG}"


# build/configuration variables
#
SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--disable-valgrind-rpass \
			--release-channel=stable \
			--prefix="${LOCALBASE}" \
			--mandir="${LOCALBASE}/man"

CONFIGURE_ENV +=	ac_cv_header_execinfo_h=no

# need for libbacktrace
USE_LIBTOOL =		gnu

.ifdef LOCAL_LLVM_FOR_RUST
CONFIGURE_ARGS +=	--llvm-root="${LOCAL_LLVM_FOR_RUST}"
.endif

ALL_TARGET +=		rustc-stage3 \
			${TRIPLE_ARCH}/stage3/bin/rustdoc \
			docs
TEST_TARGET =		check
TEST_ENV +=		ALLOW_NONZERO_RLIMIT_CORE=1

# - check datasize limit before configuring (and building)
pre-configure:
	@if [ `ulimit -d` -lt 1572864 ]; then \
		echo datasize limit is too low - amd64 build takes approx 1.5GB; \
		exit 1; fi

# - remove autodetected programs
# - copy libestdc++ from MODGCC4 to specific directory
#   in order to disambiguate version linking (having multiple libestdc++
#   at build time)
# - copy snapshot in stage0 (avoid downloading a snapshot)
post-configure:
.for _v in CFG_CURLORWGET CFG_GIT CFG_CLANG CFG_VALGRIND CFG_PERF CFG_ISCC \
	CFG_JAVAC CFG_ANTLR4 CFG_BISON CFG_PANDOC CFG_GDB CFG_LLDB \
	CFG_GDB_VERSION CFG_ADB
	perl -pi -e 's/^${_v} .*/${_v} := /' ${WRKBUILD}/config.mk
.endfor
	rm -rf ${WRKDIR}/modgcc-libs
	mkdir ${WRKDIR}/modgcc-libs
	cp ${LOCALBASE}/lib/libestdc++.so.${LIBESTDC_VERSION} ${WRKDIR}/modgcc-libs
	cp ${WRKDIR}/rust-stage0/bin/rustc \
		${WRKBUILD}/${TRIPLE_ARCH}/stage0/bin
	cp ${WRKDIR}/rust-stage0/lib/lib*.so* \
		${WRKBUILD}/${TRIPLE_ARCH}/stage0/lib


# do-install: don't use the default install target
do-install:
	# host binary
	${INSTALL_PROGRAM_DIR} ${PREFIX}/lib/rustlib/${TRIPLE_ARCH}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/${TRIPLE_ARCH}/stage3/bin/rustc \
		${PREFIX}/lib/rustlib/${TRIPLE_ARCH}/bin
	${SUBST_PROGRAM} -c \
		files/rustc ${PREFIX}/bin/rustc
	${INSTALL_PROGRAM} ${WRKBUILD}/${TRIPLE_ARCH}/stage3/bin/rustdoc \
		${PREFIX}/bin/rustdoc
	
	# data
	${INSTALL_DATA} \
		${WRKSRC}/man/{rustc,rustdoc}.1 \
		${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rust
	${INSTALL_DATA} ${WRKSRC}/{COPYRIGHT,LICENSE-APACHE,LICENSE-MIT,README.md} \
		${PREFIX}/share/doc/rust
	
	# target libraries
	${INSTALL_DATA_DIR} ${PREFIX}/lib/rustlib/${TRIPLE_ARCH}/lib
	${INSTALL_DATA} \
		${WRKBUILD}/${TRIPLE_ARCH}/stage3/lib/rustlib/${TRIPLE_ARCH}/lib/lib* \
		${PREFIX}/lib/rustlib/${TRIPLE_ARCH}/lib
	
	# html documentation
	cp -R ${WRKBUILD}/doc ${PREFIX}/share/doc/rust/html
	chmod -R a+rX ${PREFIX}/share/doc/rust/html

.include <bsd.port.mk>
