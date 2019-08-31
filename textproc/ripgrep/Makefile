# $OpenBSD: Makefile,v 1.16 2019/08/31 06:58:11 semarie Exp $

COMMENT =		line oriented search tool using Rust's regex library #'

GH_ACCOUNT =		BurntSushi
GH_PROJECT =		ripgrep
GH_TAGNAME =		11.0.2

CATEGORIES =		textproc sysutils

# Unlicense/MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c c++abi pthread

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo
BUILD_DEPENDS =		textproc/asciidoc

MODCARGO_CRATES_UPDATE +=	libc

MODCARGO_CRATES +=	aho-corasick	0.7.4	# Unlicense/MIT
MODCARGO_CRATES +=	atty	0.2.13	# MIT
MODCARGO_CRATES +=	base64	0.10.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	bitflags	1.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	bstr	0.2.6	# MIT OR Apache-2.0
MODCARGO_CRATES +=	bytecount	0.5.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	byteorder	1.3.2	# Unlicense OR MIT
MODCARGO_CRATES +=	c2-chacha	0.2.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	cc	1.0.38	# MIT/Apache-2.0
MODCARGO_CRATES +=	cfg-if	0.1.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	clap	2.33.0	# MIT
MODCARGO_CRATES +=	crossbeam-channel	0.3.9	# MIT/Apache-2.0 AND BSD-2-Clause
MODCARGO_CRATES +=	crossbeam-utils	0.6.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	encoding_rs	0.8.17	# MIT/Apache-2.0
MODCARGO_CRATES +=	encoding_rs_io	0.1.6	# MIT OR Apache-2.0
MODCARGO_CRATES +=	fnv	1.0.6	# Apache-2.0 / MIT
MODCARGO_CRATES +=	fs_extra	1.1.0	# MIT
MODCARGO_CRATES +=	getrandom	0.1.7	# MIT OR Apache-2.0
MODCARGO_CRATES +=	glob	0.3.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	itoa	0.4.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	jemalloc-sys	0.3.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	jemallocator	0.3.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	lazy_static	1.3.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	libc	0.2.63	# MIT OR Apache-2.0
MODCARGO_CRATES +=	log	0.4.8	# MIT OR Apache-2.0
MODCARGO_CRATES +=	memchr	2.2.1	# Unlicense/MIT
MODCARGO_CRATES +=	memmap	0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	num_cpus	1.10.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	packed_simd	0.3.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	pcre2	0.2.1	# Unlicense/MIT
MODCARGO_CRATES +=	pcre2-sys	0.2.2	# Unlicense/MIT
MODCARGO_CRATES +=	pkg-config	0.3.15	# MIT/Apache-2.0
MODCARGO_CRATES +=	ppv-lite86	0.2.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	proc-macro2	0.4.30	# MIT/Apache-2.0
MODCARGO_CRATES +=	quote	0.6.13	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand	0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_chacha	0.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_core	0.5.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_hc	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	redox_syscall	0.1.56	# MIT
MODCARGO_CRATES +=	regex	1.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	regex-automata	0.1.8	# Unlicense/MIT
MODCARGO_CRATES +=	regex-syntax	0.6.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	remove_dir_all	0.5.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	ryu	1.0.0	# Apache-2.0 OR BSL-1.0
MODCARGO_CRATES +=	same-file	1.0.5	# Unlicense/MIT
MODCARGO_CRATES +=	serde	1.0.98	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_derive	1.0.98	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_json	1.0.40	# MIT OR Apache-2.0
MODCARGO_CRATES +=	strsim	0.8.0	# MIT
MODCARGO_CRATES +=	syn	0.15.42	# MIT OR Apache-2.0
MODCARGO_CRATES +=	tempfile	3.1.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	termcolor	1.0.5	# Unlicense OR MIT
MODCARGO_CRATES +=	textwrap	0.11.0	# MIT
MODCARGO_CRATES +=	thread_local	0.3.6	# Apache-2.0/MIT
MODCARGO_CRATES +=	ucd-util	0.1.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-width	0.1.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-xid	0.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	utf8-ranges	1.0.3	# Unlicense/MIT
MODCARGO_CRATES +=	walkdir	2.2.9	# Unlicense/MIT
MODCARGO_CRATES +=	winapi	0.3.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-i686-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-util	0.1.2	# Unlicense/MIT
MODCARGO_CRATES +=	winapi-x86_64-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	wincolor	1.0.1	# Unlicense/MIT

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
