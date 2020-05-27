# $OpenBSD: Makefile,v 1.19 2020/05/27 09:38:34 paco Exp $

COMMENT =		line oriented search tool using Rust's regex library #'

GH_ACCOUNT =		BurntSushi
GH_PROJECT =		ripgrep
GH_TAGNAME =		12.1.0

CATEGORIES =		textproc sysutils

# Unlicense/MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c c++abi pthread

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo
BUILD_DEPENDS =		textproc/asciidoc

MODCARGO_CRATES +=	aho-corasick	0.7.10	# Unlicense/MIT
MODCARGO_CRATES +=	atty	0.2.14	# MIT
MODCARGO_CRATES +=	autocfg	1.0.0	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	base64	0.12.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	bitflags	1.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	bstr	0.2.12	# MIT OR Apache-2.0
MODCARGO_CRATES +=	bytecount	0.6.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	byteorder	1.3.4	# Unlicense OR MIT
MODCARGO_CRATES +=	cc	1.0.52	# MIT/Apache-2.0
MODCARGO_CRATES +=	cfg-if	0.1.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	clap	2.33.0	# MIT
MODCARGO_CRATES +=	crossbeam-channel	0.4.2	# MIT/Apache-2.0 AND BSD-2-Clause
MODCARGO_CRATES +=	crossbeam-utils	0.7.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	encoding_rs	0.8.22	# MIT/Apache-2.0
MODCARGO_CRATES +=	encoding_rs_io	0.1.7	# MIT OR Apache-2.0
MODCARGO_CRATES +=	fnv	1.0.6	# Apache-2.0 / MIT
MODCARGO_CRATES +=	fs_extra	1.1.0	# MIT
MODCARGO_CRATES +=	glob	0.3.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	globset	0.4.5	# Unlicense/MIT
MODCARGO_CRATES +=	grep	0.2.6	# Unlicense/MIT
MODCARGO_CRATES +=	grep-cli	0.1.4	# Unlicense/MIT
MODCARGO_CRATES +=	grep-matcher	0.1.4	# Unlicense/MIT
MODCARGO_CRATES +=	grep-pcre2	0.1.4	# Unlicense/MIT
MODCARGO_CRATES +=	grep-printer	0.1.5	# Unlicense/MIT
MODCARGO_CRATES +=	grep-regex	0.1.8	# Unlicense/MIT
MODCARGO_CRATES +=	grep-searcher	0.1.7	# Unlicense/MIT
MODCARGO_CRATES +=	hermit-abi	0.1.12	# MIT/Apache-2.0
MODCARGO_CRATES +=	ignore	0.4.15	# Unlicense/MIT
MODCARGO_CRATES +=	itoa	0.4.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	jemalloc-sys	0.3.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	jemallocator	0.3.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	lazy_static	1.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	libc	0.2.69	# MIT OR Apache-2.0
MODCARGO_CRATES +=	log	0.4.8	# MIT OR Apache-2.0
MODCARGO_CRATES +=	maybe-uninit	2.0.0	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	memchr	2.3.3	# Unlicense/MIT
MODCARGO_CRATES +=	memmap	0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	num_cpus	1.13.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	packed_simd	0.3.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	pcre2	0.2.3	# Unlicense/MIT
MODCARGO_CRATES +=	pcre2-sys	0.2.2	# Unlicense/MIT
MODCARGO_CRATES +=	pkg-config	0.3.17	# MIT/Apache-2.0
MODCARGO_CRATES +=	proc-macro2	1.0.12	# MIT OR Apache-2.0
MODCARGO_CRATES +=	quote	1.0.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	regex	1.3.7	# MIT OR Apache-2.0
MODCARGO_CRATES +=	regex-automata	0.1.9	# Unlicense/MIT
MODCARGO_CRATES +=	regex-syntax	0.6.17	# MIT/Apache-2.0
MODCARGO_CRATES +=	ryu	1.0.4	# Apache-2.0 OR BSL-1.0
MODCARGO_CRATES +=	same-file	1.0.6	# Unlicense/MIT
MODCARGO_CRATES +=	serde	1.0.107	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_derive	1.0.107	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_json	1.0.52	# MIT OR Apache-2.0
MODCARGO_CRATES +=	strsim	0.8.0	# MIT
MODCARGO_CRATES +=	syn	1.0.19	# MIT OR Apache-2.0
MODCARGO_CRATES +=	termcolor	1.1.0	# Unlicense OR MIT
MODCARGO_CRATES +=	textwrap	0.11.0	# MIT
MODCARGO_CRATES +=	thread_local	1.0.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	unicode-width	0.1.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-xid	0.2.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	walkdir	2.3.1	# Unlicense/MIT
MODCARGO_CRATES +=	winapi	0.3.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-i686-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-util	0.1.5	# Unlicense/MIT
MODCARGO_CRATES +=	winapi-x86_64-pc-windows-gnu	0.4.0	# MIT/Apache-2.0

CONFIGURE_STYLE =	cargo

PATCHORIG =		.openbsd.orig
SEPARATE_BUILD =	Yes

MODCARGO_RUSTFLAGS =	-C debuginfo=0

RELEASE_DIR =		${MODCARGO_TARGET_DIR}/release
OUT_DIR =		${RELEASE_DIR}/build/ripgrep-*/out

# fish completion excluded as it is shipped with shells/fish
do-install:
	${INSTALL_PROGRAM} ${RELEASE_DIR}/rg ${PREFIX}/bin/
	${INSTALL_MAN} ${OUT_DIR}/rg.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions
	${INSTALL_DATA} ${OUT_DIR}/rg.bash \
	    ${PREFIX}/share/bash-completion/completions/rg
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${OUT_DIR}/_rg.ps1 ${PREFIX}/share/zsh/site-functions/_rg

.include <bsd.port.mk>
