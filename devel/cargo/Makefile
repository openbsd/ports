# $OpenBSD: Makefile,v 1.2 2016/08/13 07:40:43 landry Exp $
COMMENT = package manager for Rust language

# cargo version
CARGO_VERSION =		0.10.0

# rust-install submodule version
# in cargo/src/rust-installer
RUSTINSTALL_INDEX =	c37d3747da75c280237dc2d6b925078e69555499

# crates.io commit for CARGO_VERSION
# https://github.com/rust-lang/crates.io-index/commits/master/ca/rg/cargo
CRATESIO_INDEX =	9df16a42b9f2e03378292a6bb1743c0473adec35

# cargo version used for bootstrapping
BOOTSTRAP_VERSION =	0.10.0-20160523

# registry index
# see ${WRKDIR}/cargo-home/registry/index/github.com-${REGISTRY_INDEX}
REGISTRY_INDEX =	88ac128001ac3a9a


DISTNAME =	cargo-${CARGO_VERSION}
REVISION =	0
CATEGORIES =	devel

HOMEPAGE =	https://doc.crates.io/

# cargo is dual licensed MIT/Apache-2.0
# third-parties (detail below):
#  - MIT
#  - Unlicense/MIT
#  - MIT/Apache-2.0
#  - MPL-2.0
#  - one with no indication of licence (hamcrest)
#
# hamcrest is used only for the testsuite, and isn't builded with cargo.
# so the package doesn't contain it.
#
PERMIT_PACKAGE_CDROM = Yes
PERMIT_DISTFILES_FTP = No as hamcrest has no license information

WANTLIB = c crypto curl m pthread ssh2 ssl z

DIST_SUBDIR =	cargo
MASTER_SITES =	https://github.com/rust-lang/
DISTFILES +=	cargo-${CARGO_VERSION}.tar.gz{cargo/archive/${CARGO_VERSION}.tar.gz}
DISTFILES +=	rust-installer-${RUSTINSTALL_INDEX}.tar.gz{rust-installer/archive/${RUSTINSTALL_INDEX}.tar.gz}
DISTFILES +=	crates.io-index-${CRATESIO_INDEX}.tar.gz{crates.io-index/archive/${CRATESIO_INDEX}.tar.gz}

# look at ${WRKDIR}/cargo-home/registry/src/github.com-${REGISTRY_INDEX}
# for the list
CRATES +=	advapi32-sys-0.1.2		# MIT
CRATES +=	aho-corasick-0.5.1		# Unlicense/MIT
CRATES +=	bitflags-0.1.1			# MIT/Apache-2.0
CRATES +=	bufstream-0.1.1			# MIT/Apache-2.0
CRATES +=	cmake-0.1.16			# MIT/Apache-2.0
CRATES +=	crossbeam-0.2.8			# MIT/Apache-2.0
CRATES +=	curl-0.2.18			# MIT
CRATES +=	curl-sys-0.1.34			# MIT
CRATES +=	docopt-0.6.78			# Unlicense/MIT
CRATES +=	env_logger-0.3.2		# MIT/Apache-2.0
CRATES +=	filetime-0.1.10			# MIT/Apache-2.0
CRATES +=	flate2-0.2.13			# MIT/Apache-2.0
CRATES +=	fs2-0.2.3			# MIT/Apache-2.0
CRATES +=	gcc-0.3.26			# MIT/Apache-2.0
CRATES +=	gdi32-sys-0.1.1			# MIT
CRATES +=	git2-0.4.2			# MIT/Apache-2.0
CRATES +=	git2-curl-0.4.0			# MIT/Apache-2.0
CRATES +=	glob-0.2.11			# MIT/Apache-2.0
CRATES +=	hamcrest-0.1.0			# no license indication (testsuite only)
CRATES +=	kernel32-sys-0.2.1		# MIT
CRATES +=	libc-0.2.8			# MIT/Apache-2.0
CRATES +=	libgit2-sys-0.4.2		# MIT/Apache-2.0
CRATES +=	libressl-pnacl-sys-2.1.6	# MIT
CRATES +=	libssh2-sys-0.1.37		# MIT/Apache-2.0
CRATES +=	libz-sys-1.0.2			# MIT/Apache-2.0
CRATES +=	log-0.3.5			# MIT/Apache-2.0
CRATES +=	matches-0.1.2			# MIT
CRATES +=	memchr-0.1.10			# Unlicense/MIT
CRATES +=	miniz-sys-0.1.7			# MIT/Apache-2.0
CRATES +=	nom-1.2.2			# MIT
CRATES +=	num-0.1.31			# MIT/Apache-2.0
CRATES +=	num_cpus-0.2.11			# MIT
CRATES +=	openssl-sys-0.7.8		# MIT
CRATES +=	pkg-config-0.3.8		# MIT/Apache-2.0
CRATES +=	pnacl-build-helper-1.4.10	# MPL-2.0
CRATES +=	rand-0.3.14			# MIT/Apache-2.0
CRATES +=	regex-0.1.58			# MIT/Apache-2.0
CRATES +=	regex-syntax-0.3.0		# MIT/Apache-2.0
CRATES +=	rustc-serialize-0.3.18		# MIT/Apache-2.0
CRATES +=	semver-0.2.3			# MIT/Apache-2.0
CRATES +=	strsim-0.3.0			# MIT
CRATES +=	tar-0.4.4			# MIT/Apache-2.0
CRATES +=	tempdir-0.3.4			# MIT/Apache-2.0
CRATES +=	term-0.4.4			# MIT/Apache-2.0
CRATES +=	time-0.1.34			# MIT/Apache-2.0
CRATES +=	toml-0.1.28			# MIT/Apache-2.0
CRATES +=	unicode-bidi-0.2.3		# MIT/Apache-2.0
CRATES +=	unicode-normalization-0.1.2	# MIT/Apache-2.0
CRATES +=	url-0.2.38			# MIT/Apache-2.0
CRATES +=	url-0.5.7			# MIT/Apache-2.0
CRATES +=	user32-sys-0.1.2		# MIT
CRATES +=	utf8-ranges-0.1.3		# Unlicense/MIT
CRATES +=	uuid-0.1.18			# MIT/Apache-2.0
CRATES +=	winapi-0.2.6			# MIT
CRATES +=	winapi-build-0.1.1		# MIT

MASTER_SITES0 =	https://crates.io/api/v1/crates/
.for _crate in ${CRATES}
DISTFILES +=	${_crate}.tar.gz{${_crate:C/-[^-]*$//}/${_crate:C/^.*-//}/download}:0
.endfor

MASTER_SITES1 = http://semarie.online.fr/cargo/
DISTFILES +=	cargo-bootstrap-${BOOTSTRAP_VERSION}.tar.gz:1

MODULES =	lang/python
MODPY_RUNDEP =	No

USE_GMAKE =	Yes

BUILD_DEPENDS =	devel/libgit2/libgit2 \
		devel/cmake \
		lang/rust>=1.8.0p1

LIB_DEPENDS =	net/curl \
		security/libssh2

RUN_DEPENDS =	lang/rust

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix=${LOCALBASE} \
			--mandir=${LOCALBASE}/man \
			--local-rust-root=${LOCALBASE} \
			--local-cargo=${WRKDIR}/cargo-bootstrap-${BOOTSTRAP_VERSION}/cargo

MAKE_ENV +=	CARGO_HOME=${WRKDIR}/cargo-home \
		VERBOSE=1 \
		LIBSSH2_SYS_USE_PKG_CONFIG=1

post-extract:
	# place rust-installer inside WRKSRC
	rmdir ${WRKSRC}/src/rust-installer
	mv ${WRKDIR}/rust-installer-${RUSTINSTALL_INDEX} \
		${WRKSRC}/src/rust-installer
	# populate cargo registry to avoid downloading crates
	mkdir -p ${WRKDIR}/cargo-home/registry/{cache,index,src}
	mkdir ${WRKDIR}/cargo-home/registry/{cache,src}/github.com-${REGISTRY_INDEX}
	mv ${WRKDIR}/crates.io-index-${CRATESIO_INDEX} \
		${WRKDIR}/cargo-home/registry/index/github.com-${REGISTRY_INDEX}
	touch ${WRKDIR}/cargo-home/registry/index/github.com-${REGISTRY_INDEX}/.cargo-index-lock
.for _crate in ${CRATES}
	gzip < /dev/null \
		> ${WRKDIR}/cargo-home/registry/cache/github.com-${REGISTRY_INDEX}/${_crate}.crate
	mv ${WRKDIR}/${_crate} \
		${WRKDIR}/cargo-home/registry/src/github.com-${REGISTRY_INDEX}
	touch ${WRKDIR}/cargo-home/registry/src/github.com-${REGISTRY_INDEX}/${_crate}/.cargo-ok
.endfor

SUBST_VARS +=	WRKBUILD
pre-test:
	${SUBST_CMD} ${WRKSRC}/tests/support/paths.rs

post-install:
	rm -rf ${PREFIX}/lib/rustlib
	rm -rf ${PREFIX}/man ; mv ${PREFIX}/share/man ${PREFIX}/man
	mkdir -p ${PREFIX}/share/bash-completion/completions
	mv ${PREFIX}${SYSCONFDIR}/bash_completion.d/cargo \
	       ${PREFIX}/share/bash-completion/completions
	rmdir ${PREFIX}${SYSCONFDIR}/bash_completion.d \
		${PREFIX}${SYSCONFDIR}

# make a directory suitable for bootstrapping
BOOTSTRAP_NVERSION = ${CARGO_VERSION}-new
bootstrap: fake
	rm -rf ${WRKDIR}/cargo-bootstrap-${BOOTSTRAP_NVERSION}
	mkdir -p ${WRKDIR}/cargo-bootstrap-${BOOTSTRAP_NVERSION}
	cp ${WRKDIR}/cargo-bootstrap-${BOOTSTRAP_VERSION}/cargo \
		${WRKDIR}/cargo-bootstrap-${BOOTSTRAP_NVERSION}/cargo
	cp ${WRKINST}${PREFIX}/bin/cargo \
		${WRKDIR}/cargo-bootstrap-${BOOTSTRAP_NVERSION}/cargo.bin
	ldd ${WRKDIR}/cargo-bootstrap-${BOOTSTRAP_NVERSION}/cargo.bin \
		| sed -ne 's,.* \(/.*/lib/lib.*\.so[.0-9]*\)$$,\1,p' \
		| xargs -r -J % cp % \
			${WRKDIR}/cargo-bootstrap-${BOOTSTRAP_NVERSION}

.include <bsd.port.mk>
