# $OpenBSD: Makefile,v 1.2 2015/04/08 13:02:57 sthen Exp $

# snapshots are only available for amd64, for now
ONLY_FOR_ARCHS =	amd64
PKG_ARCH-doc =		*

COMMENT-main =		compiler for Rust Language
COMMENT-doc =		html documentation for rustc

V =			1.0.0beta
DISTNAME =		rustc-1.0.0-beta-src

PKGNAME =		rust-${V}
PKGNAME-main =		rust-${V}
PKGNAME-doc =		rust-doc-${V}

MULTI_PACKAGES =	-main -doc

# the snapshot version should be the version in src/snapshots.txt
SNAPSHOT-amd64 =	rust-stage0-2015-03-27-5520801-openbsd-x86_64-afab969e747a3fc72c357155ca82891d2b485b36.tar.bz2

CATEGORIES =		lang

HOMEPAGE =		http://www.rust-lang.org/

MAINTAINER =		Sebastien Marie <semarie-openbsd@latrappe.fr>

# both MIT and Apache2.0
# with portions covered by various BSD-like licenses
PERMIT_PACKAGE_CDROM =	Yes

# "make port-lib-depends-check" can help
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

#TEST_DEPENDS =		???

# note: VERBOSE permit to unhide Makefile processing
# 	RUSTFLAGS extra flags passed to rust
# 		-Z print-link-args : unhide link call
#       RUSTFLAGS_STAGE0 extra flags passed to stage0
#       	--sysroot force sysroot (due to limitation of us bootstrapper)
#       RUST_LOG helper
MAKE_ENV =		VERBOSE=1 \
			RUSTFLAGS="-Z print-link-args" \
			RUSTFLAGS_STAGE0="--sysroot ${WRKBUILD}/${TRIPLE_ARCH}/stage0" \
			RUST_LOG="${RUST_LOG}"


# build/configuration variables
#
SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--disable-valgrind-rpass \
			--release-channel=beta \
			--prefix="${LOCALBASE}" \
			--mandir="${LOCALBASE}/man"

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
# - copy snapshot in stage0 (avoid downloading a snapshot)
post-configure:
.for _v in CFG_CURLORWGET CFG_GIT CFG_CLANG CFG_VALGRIND CFG_PERF CFG_ISCC \
	CFG_JAVAC CFG_ANTLR4 CFG_BISON CFG_PANDOC CFG_GDB CFG_LLDB \
	CFG_GDB_VERSION CFG_ADB
	perl -pi -e 's/^${_v} .*/${_v} := /' ${WRKBUILD}/config.mk
.endfor
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
