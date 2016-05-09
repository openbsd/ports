# $OpenBSD: Makefile,v 1.21 2016/05/09 14:08:41 semarie Exp $

# snapshots are only available for amd64, for now
ONLY_FOR_ARCHS =	amd64
PKG_ARCH-doc =		*

COMMENT-main =		compiler for Rust Language
COMMENT-doc =		html documentation for rustc

V =			1.8.0
RUST_HASH =		4fda350b
DISTNAME =		rustc-${V}-src
REVISION =		0

SUBST_VARS +=		RUST_HASH

PKGNAME =		rust-${V}
PKGNAME-main =		rust-${V}
PKGNAME-doc =		rust-doc-${V}

MULTI_PACKAGES =	-main -doc

# the snapshot version should be the version in src/snapshots.txt
SNAPSHOT-amd64 =	rust-stage0-2016-02-17-4d3eebf-openbsd-x86_64-266b485dc1658ceb1b119ea57ff5fab705003776.tar.bz2

CATEGORIES =		lang

HOMEPAGE =		http://www.rust-lang.org/

MAINTAINER =		Sebastien Marie <semarie@openbsd.org>

# both MIT and Apache2.0
# with portions covered by various BSD-like licenses
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main =		${WANTLIB} c m pthread z
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
BUILD_DEPENDS +=	devel/llvm
MODPY_RUNDEP =		No

# rustllvm need c++11
MODGCC4_LANGS =		c++
MODGCC4_ARCHS =		*

# need to be keep in sync
LIBESTDC_VERSION =	17.0

# note: VERBOSE permit to unhide Makefile processing
# 	RUSTFLAGS extra flags passed to rust
# 		-L modgcc-libs : disambiguate libestdc++.so
# 		-Z print-link-args : unhide link call
#       RUST_LOG helper
MAKE_ENV =		VERBOSE=1 \
			RUSTFLAGS="-L ${WRKDIR}/modgcc-libs -Z print-link-args" \
			RUST_LOG="${RUST_LOG}"


# build/configuration variables
#
SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--disable-valgrind-rpass \
			--release-channel=stable \
			--llvm-root="${LOCALBASE}" \
			--prefix="${LOCALBASE}" \
			--mandir="${LOCALBASE}/man"

CONFIGURE_ENV +=	ac_cv_header_execinfo_h=no

# need for libbacktrace
USE_LIBTOOL =		gnu

ALL_TARGET +=		rustc-stage2 docs
TEST_TARGET =		check
TEST_ENV +=		ALLOW_NONZERO_RLIMIT_CORE=1
TEST_DEPENDS +=		devel/git

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

post-install:
	# cleanup
	rm ${PREFIX}/lib/rustlib/{install.log,uninstall.sh,rust-installer-version}
	# host binary wrapper
	${INSTALL_PROGRAM_DIR} \
		${PREFIX}/lib/rustlib/${TRIPLE_ARCH}/bin
	mv ${PREFIX}/bin/rustc ${PREFIX}/lib/rustlib/${TRIPLE_ARCH}/bin
	${SUBST_PROGRAM} -c \
		files/rustc ${PREFIX}/bin/rustc
	
.include <bsd.port.mk>
