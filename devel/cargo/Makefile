# $OpenBSD: Makefile,v 1.9 2017/01/01 18:49:58 landry Exp $
COMMENT = package manager for Rust language

ONLY_FOR_ARCHS =	amd64 i386

# cargo version
CARGO_VERSION =		0.15.0

# cargo version used for bootstrapping
BV-amd64 =		0.15.0-20161230
BV-i386 =		0.15.0-20161230
BOOTSTRAP_VERSION =	${BV-${MACHINE_ARCH}}

# rust-install submodule version in cargo/src/rust-installer
# see https://github.com/rust-lang/cargo/tree/${CARGO_VERSION}/src
RUSTINSTALL_INDEX =	4f994850808a572e2cc8d43f968893c8e942e9bf


DISTNAME =	cargo-${CARGO_VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://doc.crates.io/

MAINTAINER =	Sebastien Marie <semarie@online.fr>

DIST_SUBDIR =	cargo
MODCARGO_DIST_SUBDIR =

# cargo is dual licensed MIT/Apache-2.0
# third-parties (detail below):
#  - MIT
#  - Unlicense/MIT
#  - MIT/Apache-2.0
#
PERMIT_PACKAGE_CDROM = Yes

WANTLIB = c crypto curl git2 m pthread ssh2 ssl z

MASTER_SITES =	https://github.com/rust-lang/
DISTFILES +=	cargo-${CARGO_VERSION}.tar.gz{cargo/archive/${CARGO_VERSION}.tar.gz}
DISTFILES +=	rust-installer-${RUSTINSTALL_INDEX}.tar.gz{rust-installer/archive/${RUSTINSTALL_INDEX}.tar.gz}

MODCARGO_CRATES +=	advapi32-sys-0.2.0	# MIT
MODCARGO_CRATES +=	aho-corasick-0.5.3	# Unlicense/MIT
MODCARGO_CRATES +=	bitflags-0.7.0		# MIT/Apache-2.0
MODCARGO_CRATES +=	bufstream-0.1.2		# MIT/Apache-2.0
MODCARGO_CRATES +=	cfg-if-0.1.0		# MIT/Apache-2.0
MODCARGO_CRATES +=	cmake-0.1.18		# MIT/Apache-2.0
MODCARGO_CRATES +=	crossbeam-0.2.10	# Apache-2.0/MIT
MODCARGO_CRATES +=	curl-0.4.1		# MIT
MODCARGO_CRATES +=	curl-sys-0.3.6		# MIT
MODCARGO_CRATES +=	docopt-0.6.86		# Unlicense/MIT
MODCARGO_CRATES +=	env_logger-0.3.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	filetime-0.1.10		# MIT/Apache-2.0
MODCARGO_CRATES +=	flate2-0.2.14		# MIT/Apache-2.0
MODCARGO_CRATES +=	fs2-0.3.0		# MIT/Apache-2.0
MODCARGO_CRATES +=	gcc-0.3.38		# MIT/Apache-2.0
MODCARGO_CRATES +=	gdi32-sys-0.2.0		# MIT
MODCARGO_CRATES +=	git2-0.6.3		# MIT/Apache-2.0
MODCARGO_CRATES +=	git2-curl-0.7.0		# MIT/Apache-2.0
MODCARGO_CRATES +=	glob-0.2.11		# MIT/Apache-2.0
MODCARGO_CRATES +=	hamcrest-0.1.1		# MIT/Apache-2.0
MODCARGO_CRATES +=	idna-0.1.0		# MIT/Apache-2.0
MODCARGO_CRATES +=	kernel32-sys-0.2.2	# MIT
MODCARGO_CRATES +=	lazy_static-0.2.2	# MIT
MODCARGO_CRATES +=	libc-0.2.18		# MIT/Apache-2.0
MODCARGO_CRATES +=	libgit2-sys-0.6.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	libssh2-sys-0.2.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	libz-sys-1.0.10		# MIT/Apache-2.0
MODCARGO_CRATES +=	log-0.3.6		# MIT/Apache-2.0
MODCARGO_CRATES +=	matches-0.1.4		# MIT
MODCARGO_CRATES +=	memchr-0.1.11		# Unlicense/MIT
MODCARGO_CRATES +=	miniz-sys-0.1.7		# MIT/Apache-2.0
MODCARGO_CRATES +=	miow-0.1.3		# MIT/Apache-2.0
MODCARGO_CRATES +=	net2-0.2.26		# MIT/Apache-2.0
MODCARGO_CRATES +=	num-0.1.36		# MIT/Apache-2.0
MODCARGO_CRATES +=	num-bigint-0.1.35	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-complex-0.1.35	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-integer-0.1.32	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-iter-0.1.32		# MIT/Apache-2.0
MODCARGO_CRATES +=	num-rational-0.1.35	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-traits-0.1.36	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand-0.3.14		# MIT/Apache-2.0
MODCARGO_CRATES +=	num_cpus-1.1.0		# MIT/Apache-2.0
MODCARGO_CRATES +=	openssl-0.9.4		# Apache-2.0
MODCARGO_CRATES +=	openssl-probe-0.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	openssl-sys-0.9.4	# MIT
MODCARGO_CRATES +=	pkg-config-0.3.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	psapi-sys-0.1.0		# MIT
MODCARGO_CRATES +=	regex-0.1.80		# MIT/Apache-2.0
MODCARGO_CRATES +=	regex-syntax-0.3.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustc-serialize-0.3.21	# MIT/Apache-2.0
MODCARGO_CRATES +=	semver-0.5.1		# MIT/Apache-2.0
MODCARGO_CRATES +=	semver-parser-0.6.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	strsim-0.5.1		# MIT
MODCARGO_CRATES +=	tar-0.4.8		# MIT/Apache-2.0
MODCARGO_CRATES +=	tempdir-0.3.5		# MIT/Apache-2.0
MODCARGO_CRATES +=	term-0.4.4		# MIT/Apache-2.0
MODCARGO_CRATES +=	thread-id-2.0.0		# Apache-2.0
MODCARGO_CRATES +=	thread_local-0.2.7	# Apache-2.0/MIT
MODCARGO_CRATES +=	toml-0.2.1		# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-bidi-0.2.3	# MIT / Apache-2.0
MODCARGO_CRATES +=	url-1.2.3		# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-normalization-0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	user32-sys-0.2.0	# MIT
MODCARGO_CRATES +=	utf8-ranges-0.1.3	# Unlicense/MIT
MODCARGO_CRATES +=	winapi-0.2.8		# MIT
MODCARGO_CRATES +=	winapi-build-0.1.1	# MIT
MODCARGO_CRATES +=	ws2_32-sys-0.2.1	# MIT

# use libc-0.2.18 instead of libc-0.2.17: the patch for i386 is smaller
MODCARGO_CRATES_UPDATE +=	libc
# use openssl-0.9.4 which has support for LibreSSL
MODCARGO_CRATES_UPDATE +=	openssl-sys openssl

MASTER_SITES0 = http://kapouay.odns.fr/pub/cargo/
DISTFILES +=	cargo-bootstrap-${MACHINE_ARCH}-${BOOTSTRAP_VERSION}.tar.gz:0

SUPDISTFILES =	cargo-bootstrap-amd64-${BV-amd64}.tar.gz:0 \
		cargo-bootstrap-i386-${BV-i386}.tar.gz:0

SEPARATE_BUILD =	Yes

MODULES =	devel/cargo \
		lang/python

# only deal with MODCARGO_CRATES
MODCARGO_BUILDDEP =	No
MODCARGO_BUILD =	No
MODCARGO_INSTALL =	No
MODCARGO_TEST =		No

# redefine MODCARGO_CARGO_BIN to match bootstrapper
MODCARGO_CARGO_BIN =	${WRKDIR}/cargo-bootstrap-${MACHINE_ARCH}-${BOOTSTRAP_VERSION}/cargo

MODPY_RUNDEP =		No

USE_GMAKE =	Yes

BUILD_DEPENDS =	devel/cmake \
		lang/rust>=1.14,<1.15

LIB_DEPENDS =	net/curl \
		devel/libgit2/libgit2 \
		security/libssh2

RUN_DEPENDS =	lang/rust

CONFIGURE_STYLE =	cargo \
			simple
CONFIGURE_ARGS +=	--prefix=${LOCALBASE} \
			--mandir=${LOCALBASE}/man \
			--release-channel=stable \
			--local-rust-root=${LOCALBASE} \
			--rustc=${LOCALBASE}/bin/rustc \
			--rustdoc=${LOCALBASE}/bin/rustdoc \
			--cargo=${MODCARGO_CARGO_BIN}

MAKE_ENV +=	${MODCARGO_ENV} \
		VERBOSE=1 \
		LIBGIT2_SYS_USE_PKG_CONFIG=1

post-extract:
	# place rust-installer inside WRKSRC
	rmdir ${WRKSRC}/src/rust-installer
	mv ${WRKDIR}/rust-installer-${RUSTINSTALL_INDEX} \
		${WRKSRC}/src/rust-installer

SUBST_VARS +=	MODCARGO_TARGET_DIR
pre-test:
	${SUBST_CMD} ${WRKSRC}/tests/cargotest/support/paths.rs
.ifdef FULLTEST
	rm -rf -- ${WRKDIR}/.cargo/config
.endif

post-install:
	rm -rf ${PREFIX}/lib/rustlib
	mkdir -p ${PREFIX}/share/bash-completion/completions
	mv ${PREFIX}${SYSCONFDIR}/bash_completion.d/cargo \
	       ${PREFIX}/share/bash-completion/completions
	rmdir ${PREFIX}${SYSCONFDIR}/bash_completion.d \
		${PREFIX}${SYSCONFDIR}

# make a directory suitable for bootstrapping
BOOTSTRAPDIR_CUR = ${WRKDIR}/cargo-bootstrap-${MACHINE_ARCH}-${BOOTSTRAP_VERSION}
BOOTSTRAPDIR_NEW = ${WRKDIR}/cargo-bootstrap-${MACHINE_ARCH}-${CARGO_VERSION}-new
bootstrap: fake
	rm -rf ${BOOTSTRAPDIR_NEW}
	mkdir -p ${BOOTSTRAPDIR_NEW}
	cp ${BOOTSTRAPDIR_CUR}/cargo ${BOOTSTRAPDIR_NEW}/cargo
	cp ${WRKINST}${PREFIX}/bin/cargo ${BOOTSTRAPDIR_NEW}/cargo.bin
	ldd ${BOOTSTRAPDIR_NEW}/cargo.bin \
		| sed -ne 's,.* \(/.*/lib/lib.*\.so[.0-9]*\)$$,\1,p' \
		| xargs -r -J % cp % ${BOOTSTRAPDIR_NEW}

.include <bsd.port.mk>
