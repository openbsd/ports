# $OpenBSD: Makefile,v 1.11 2018/10/08 15:28:05 landry Exp $

COMMENT =		line oriented search tool using Rust's regex library #'

GH_ACCOUNT =		BurntSushi
GH_PROJECT =		ripgrep
GH_TAGNAME =		0.8.1
REVISION =		2

CATEGORIES =		textproc sysutils

# Unlicense/MIT
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += c pthread

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo
BUILD_DEPENDS =		lang/rust>=1.20 \
			textproc/asciidoc

MODCARGO_CRATES +=	aho-corasick-0.6.4	# Unlicense/MIT
MODCARGO_CRATES +=	ansi_term-0.10.2	# MIT
MODCARGO_CRATES +=	atty-0.2.6	# MIT
MODCARGO_CRATES +=	bitflags-1.0.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	bytecount-0.3.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	cfg-if-0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	clap-2.30.0	# MIT
MODCARGO_CRATES +=	crossbeam-0.3.2	# Apache-2.0/MIT
MODCARGO_CRATES +=	encoding_rs-0.7.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	fnv-1.0.6	# Apache-2.0 / MIT
MODCARGO_CRATES +=	fuchsia-zircon-0.3.3	# BSD-3-Clause
MODCARGO_CRATES +=	fuchsia-zircon-sys-0.3.3	# BSD-3-Clause
MODCARGO_CRATES +=	glob-0.2.11	# MIT/Apache-2.0
MODCARGO_CRATES +=	globset-0.3.0	# Unlicense/MIT
MODCARGO_CRATES +=	grep-0.1.8	# Unlicense/MIT
MODCARGO_CRATES +=	ignore-0.4.0	# Unlicense/MIT
MODCARGO_CRATES +=	lazy_static-1.0.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	libc-0.2.36	# MIT/Apache-2.0
MODCARGO_CRATES +=	log-0.4.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	memchr-2.0.1	# Unlicense/MIT
MODCARGO_CRATES +=	memmap-0.6.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	num_cpus-1.8.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand-0.3.22	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand-0.4.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	redox_syscall-0.1.37	# MIT
MODCARGO_CRATES +=	redox_termios-0.1.1	# MIT
MODCARGO_CRATES +=	regex-0.2.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	regex-syntax-0.4.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	same-file-1.0.2	# Unlicense/MIT
MODCARGO_CRATES +=	simd-0.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	strsim-0.7.0	# MIT
MODCARGO_CRATES +=	tempdir-0.3.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	termcolor-0.3.4	# Unlicense/MIT
MODCARGO_CRATES +=	termion-1.5.1	# MIT
MODCARGO_CRATES +=	textwrap-0.9.0	# MIT
MODCARGO_CRATES +=	thread_local-0.3.5	# Apache-2.0/MIT
MODCARGO_CRATES +=	unicode-width-0.1.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	unreachable-1.0.0	# MIT / Apache-2.0
MODCARGO_CRATES +=	utf8-ranges-1.0.0	# Unlicense/MIT
MODCARGO_CRATES +=	vec_map-0.8.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	void-1.0.2	# MIT
MODCARGO_CRATES +=	walkdir-2.1.4	# Unlicense/MIT
MODCARGO_CRATES +=	winapi-0.3.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-i686-pc-windows-gnu-0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-x86_64-pc-windows-gnu-0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	wincolor-0.1.6	# Unlicense/MIT
CONFIGURE_STYLE =	cargo

PATCHORIG =		.openbsd.orig
SEPARATE_BUILD =	Yes

MODCARGO_RUSTFLAGS =	-C debuginfo=0

RELEASE_DIR =		${MODCARGO_TARGET_DIR}/release
OUT_DIR =		${RELEASE_DIR}/build/ripgrep-*/out

do-install:
	${INSTALL_PROGRAM} ${RELEASE_DIR}/rg ${PREFIX}/bin/
	${INSTALL_MAN} ${OUT_DIR}/rg.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions
	${INSTALL_DATA} ${OUT_DIR}/rg.bash \
	    ${PREFIX}/share/bash-completion/completions/rg
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions
	${INSTALL_DATA} ${OUT_DIR}/rg.fish ${PREFIX}/share/fish/completions/
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${OUT_DIR}/_rg.ps1 ${PREFIX}/share/zsh/site-functions/_rg

.include <bsd.port.mk>
