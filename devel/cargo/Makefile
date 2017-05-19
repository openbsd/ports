# $OpenBSD: Makefile,v 1.13 2017/05/19 10:10:27 landry Exp $
COMMENT = package manager for Rust language

ONLY_FOR_ARCHS =	amd64 i386

# cargo version
CARGO_VERSION =		0.18.0
RUSTC_VERSION =		1.17.0

# cargo version used for bootstrapping
BV-amd64 =		0.18.0-20170426
BV-i386 =		0.18.0-20170426
BOOTSTRAP_VERSION =	${BV-${MACHINE_ARCH}}

PKGNAME =	cargo-${CARGO_VERSION}
DISTNAME =	rustc-${RUSTC_VERSION}-src
CATEGORIES =	devel

HOMEPAGE =	https://doc.crates.io/

MAINTAINER =	Sebastien Marie <semarie@online.fr>

DIST_SUBDIR =	rust
MODCARGO_DIST_SUBDIR = ../cargo

# cargo is dual licensed MIT/Apache-2.0
# third-parties (detail below):
#  - MIT
#  - Unlicense/MIT
#  - MIT/Apache-2.0
#
PERMIT_PACKAGE_CDROM = Yes

WANTLIB = c crypto curl git2 m pthread ssh2 ssl z

MODCARGO_CRATES +=	advapi32-sys-0.2.0	# MIT
MODCARGO_CRATES +=	aho-corasick-0.5.3	# Unlicense/MIT
MODCARGO_CRATES +=	aho-corasick-0.6.3	# Unlicense/MIT
MODCARGO_CRATES +=	bitflags-0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	bufstream-0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	cfg-if-0.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	chrono-0.2.25	# MIT/Apache-2.0
MODCARGO_CRATES +=	cmake-0.1.22	# MIT/Apache-2.0
MODCARGO_CRATES +=	crossbeam-0.2.10	# Apache-2.0/MIT
MODCARGO_CRATES +=	curl-0.4.6	# MIT
MODCARGO_CRATES +=	curl-sys-0.3.11	# MIT
MODCARGO_CRATES +=	docopt-0.7.0	# Unlicense/MIT
MODCARGO_CRATES +=	dtoa-0.4.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	env_logger-0.4.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	filetime-0.1.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	flate2-0.2.17	# MIT/Apache-2.0
MODCARGO_CRATES +=	foreign-types-0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	fs2-0.4.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	gcc-0.3.45	# MIT/Apache-2.0
MODCARGO_CRATES +=	gdi32-sys-0.2.0	# MIT
MODCARGO_CRATES +=	git2-0.6.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	git2-curl-0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	glob-0.2.11	# MIT/Apache-2.0
MODCARGO_CRATES +=	hamcrest-0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	idna-0.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	itoa-0.3.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	kernel32-sys-0.2.2	# MIT
MODCARGO_CRATES +=	lazy_static-0.2.5	# MIT
MODCARGO_CRATES +=	libc-0.2.21	# MIT/Apache-2.0
MODCARGO_CRATES +=	libgit2-sys-0.6.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	libssh2-sys-0.2.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	libz-sys-1.0.13	# MIT/Apache-2.0
MODCARGO_CRATES +=	log-0.3.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	matches-0.1.4	# MIT
MODCARGO_CRATES +=	memchr-0.1.11	# Unlicense/MIT
MODCARGO_CRATES +=	memchr-1.0.1	# Unlicense/MIT
MODCARGO_CRATES +=	miniz-sys-0.1.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	miow-0.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	net2-0.2.27	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-0.1.37	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-bigint-0.1.37	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-iter-0.1.33	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-complex-0.1.36	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-integer-0.1.33	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-rational-0.1.36	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-traits-0.1.37	# MIT/Apache-2.0
MODCARGO_CRATES +=	num_cpus-1.3.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	openssl-0.9.10	# Apache-2.0
MODCARGO_CRATES +=	openssl-probe-0.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	openssl-sys-0.9.10	# MIT
MODCARGO_CRATES +=	pkg-config-0.3.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	psapi-sys-0.1.0	# MIT
MODCARGO_CRATES +=	quote-0.3.15	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand-0.3.15	# MIT/Apache-2.0
MODCARGO_CRATES +=	redox_syscall-0.1.17	# MIT
MODCARGO_CRATES +=	regex-0.1.80	# MIT/Apache-2.0
MODCARGO_CRATES +=	regex-0.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	regex-syntax-0.3.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	regex-syntax-0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustc-serialize-0.3.23	# MIT/Apache-2.0
MODCARGO_CRATES +=	semver-0.6.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	semver-parser-0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	serde-0.9.12	# MIT/Apache-2.0
MODCARGO_CRATES +=	serde_codegen_internals-0.14.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	serde_derive-0.9.12	# MIT/Apache-2.0
MODCARGO_CRATES +=	serde_ignored-0.0.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	serde_json-0.9.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	shell-escape-0.1.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	strsim-0.6.0	# MIT
MODCARGO_CRATES +=	syn-0.11.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	synom-0.11.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	tar-0.4.11	# MIT/Apache-2.0
MODCARGO_CRATES +=	tempdir-0.3.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	term-0.4.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	thread-id-2.0.0	# Apache-2.0
MODCARGO_CRATES +=	thread-id-3.0.0	# Apache-2.0
MODCARGO_CRATES +=	thread_local-0.2.7	# Apache-2.0/MIT
MODCARGO_CRATES +=	thread_local-0.3.3	# Apache-2.0/MIT
MODCARGO_CRATES +=	time-0.1.36	# MIT/Apache-2.0
MODCARGO_CRATES +=	toml-0.3.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-bidi-0.2.5	# MIT / Apache-2.0
MODCARGO_CRATES +=	unicode-normalization-0.1.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-xid-0.0.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	unreachable-0.1.1	# MIT
MODCARGO_CRATES +=	url-1.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	user32-sys-0.2.0	# MIT
MODCARGO_CRATES +=	utf8-ranges-0.1.3	# Unlicense/MIT
MODCARGO_CRATES +=	utf8-ranges-1.0.0	# Unlicense/MIT
MODCARGO_CRATES +=	void-1.0.2	# MIT
MODCARGO_CRATES +=	winapi-0.2.8	# MIT
MODCARGO_CRATES +=	winapi-build-0.1.1	# MIT
MODCARGO_CRATES +=	ws2_32-sys-0.2.1	# MIT

MASTER_SITES =	https://static.rust-lang.org/dist/
MASTER_SITES0 = http://kapouay.odns.fr/pub/cargo/
DISTFILES +=	${DISTNAME}${EXTRACT_SUFX} \
		${BOOTSTRAP}

BOOTSTRAP =		${BOOTSTRAP-${MACHINE_ARCH}}
.for m in i386 amd64
BOOTSTRAP-$m =		cargo-bootstrap-${m}-${BV-$m}.tar.gz:0
SUPDISTFILES +=		${BOOTSTRAP-$m}
.endfor

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
		lang/rust>=1.14

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

WRKDIST =	${WRKDIR}/${DISTNAME}/cargo

SUBST_VARS +=	MODCARGO_TARGET_DIR
pre-test:
	${SUBST_CMD} ${WRKSRC}/tests/cargotest/support/paths.rs
.ifdef FULLTEST
	rm -rf -- ${WRKDIR}/.cargo/config
.endif

post-extract:
	rmdir ${WRKSRC}/src/rust-installer
	ln -s ${WRKDIR}/${DISTNAME}/src/rust-installer \
		${WRKSRC}/src/rust-installer

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
