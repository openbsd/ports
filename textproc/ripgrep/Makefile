# $OpenBSD: Makefile,v 1.15 2019/08/30 12:24:00 semarie Exp $

COMMENT =		line oriented search tool using Rust's regex library #'

GH_ACCOUNT =		BurntSushi
GH_PROJECT =		ripgrep
GH_TAGNAME =		0.10.0

CATEGORIES =		textproc sysutils

# Unlicense/MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c c++abi pthread

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo
BUILD_DEPENDS =		lang/rust>=1.20 \
			textproc/asciidoc

MODCARGO_CRATES_UPDATE +=	libc

MODCARGO_CRATES +=	aho-corasick	0.6.8		# Unlicense/MIT
MODCARGO_CRATES +=	arrayvec	0.4.7		# MIT/Apache-2.0
MODCARGO_CRATES +=	atty	0.2.11		# MIT
MODCARGO_CRATES +=	base64	0.9.2		# MIT/Apache-2.0
MODCARGO_CRATES +=	bitflags	1.0.4		# MIT/Apache-2.0
MODCARGO_CRATES +=	bytecount	0.3.2		# Apache-2.0/MIT
MODCARGO_CRATES +=	byteorder	1.2.6		# Unlicense/MIT
MODCARGO_CRATES +=	cc	1.0.24		# MIT/Apache-2.0
MODCARGO_CRATES +=	cfg-if	0.1.5		# MIT/Apache-2.0
MODCARGO_CRATES +=	clap	2.32.0		# MIT
MODCARGO_CRATES +=	cloudabi	0.0.3		# BSD-2-Clause
MODCARGO_CRATES +=	crossbeam-channel	0.2.4		# MIT/Apache-2.0
MODCARGO_CRATES +=	crossbeam-epoch	0.5.2		# MIT/Apache-2.0
MODCARGO_CRATES +=	crossbeam-utils	0.5.0		# MIT/Apache-2.0
MODCARGO_CRATES +=	encoding_rs	0.8.6		# MIT/Apache-2.0
MODCARGO_CRATES +=	encoding_rs_io	0.1.2		# MIT OR Apache-2.0
MODCARGO_CRATES +=	fnv	1.0.6		# Apache-2.0 / MIT
MODCARGO_CRATES +=	fuchsia-zircon	0.3.3		# BSD-3-Clause
MODCARGO_CRATES +=	glob	0.2.11		# MIT/Apache-2.0
MODCARGO_CRATES +=	fuchsia-zircon-sys	0.3.3		# BSD-3-Clause
MODCARGO_CRATES +=	itoa	0.4.2		# MIT/Apache-2.0
MODCARGO_CRATES +=	lazy_static	1.1.0		# MIT/Apache-2.0
MODCARGO_CRATES +=	libc	0.2.63		# MIT/Apache-2.0
MODCARGO_CRATES +=	lock_api	0.1.3		# Apache-2.0/MIT
MODCARGO_CRATES +=	log	0.4.5		# MIT/Apache-2.0
MODCARGO_CRATES +=	memchr	2.0.2		# Unlicense/MIT
MODCARGO_CRATES +=	memmap	0.6.2		# MIT/Apache-2.0
MODCARGO_CRATES +=	memoffset	0.2.1		# MIT
MODCARGO_CRATES +=	nodrop	0.1.12		# MIT/Apache-2.0
MODCARGO_CRATES +=	num_cpus	1.8.0		# MIT/Apache-2.0
MODCARGO_CRATES +=	owning_ref	0.3.3		# MIT
MODCARGO_CRATES +=	parking_lot	0.6.4		# Apache-2.0/MIT
MODCARGO_CRATES +=	parking_lot_core	0.3.0		# Apache-2.0/MIT
MODCARGO_CRATES +=	pcre2	0.1.0		# Unlicense/MIT
MODCARGO_CRATES +=	pcre2-sys	0.1.1		# Unlicense/MIT
MODCARGO_CRATES +=	pkg-config	0.3.14		# MIT/Apache-2.0
MODCARGO_CRATES +=	proc-macro2	0.4.18		# MIT/Apache-2.0
MODCARGO_CRATES +=	quote	0.6.8		# MIT/Apache-2.0
MODCARGO_CRATES +=	rand	0.4.3		# MIT/Apache-2.0
MODCARGO_CRATES +=	rand	0.5.5		# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_core	0.2.1		# MIT/Apache-2.0
MODCARGO_CRATES +=	redox_syscall	0.1.40		# MIT
MODCARGO_CRATES +=	redox_termios	0.1.1		# MIT
MODCARGO_CRATES +=	regex	1.0.5		# MIT/Apache-2.0
MODCARGO_CRATES +=	regex-syntax	0.6.2		# MIT/Apache-2.0
MODCARGO_CRATES +=	remove_dir_all	0.5.1		# MIT/Apache-2.0
MODCARGO_CRATES +=	ryu	0.2.6		# Apache-2.0 OR BSL-1.0
MODCARGO_CRATES +=	safemem	0.2.0		# MIT OR Apache-2.0
MODCARGO_CRATES +=	same-file	1.0.3		# Unlicense/MIT
MODCARGO_CRATES +=	scopeguard	0.3.3		# MIT/Apache-2.0
MODCARGO_CRATES +=	serde	1.0.77		# MIT/Apache-2.0
MODCARGO_CRATES +=	serde_derive	1.0.77		# MIT/Apache-2.0
MODCARGO_CRATES +=	serde_json	1.0.27		# MIT/Apache-2.0
MODCARGO_CRATES +=	simd	0.2.2		# MIT/Apache-2.0
MODCARGO_CRATES +=	smallvec	0.6.5		# MIT/Apache-2.0
MODCARGO_CRATES +=	stable_deref_trait	1.1.1		# MIT/Apache-2.0
MODCARGO_CRATES +=	strsim	0.7.0		# MIT
MODCARGO_CRATES +=	syn	0.15.1		# MIT/Apache-2.0
MODCARGO_CRATES +=	tempdir	0.3.7		# MIT/Apache-2.0
MODCARGO_CRATES +=	termcolor	1.0.3		# Unlicense OR MIT
MODCARGO_CRATES +=	termion	1.5.1		# MIT
MODCARGO_CRATES +=	textwrap	0.10.0		# MIT
MODCARGO_CRATES +=	thread_local	0.3.6		# Apache-2.0/MIT
MODCARGO_CRATES +=	ucd-util	0.1.1		# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-width	0.1.5		# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-xid	0.1.0		# MIT/Apache-2.0
MODCARGO_CRATES +=	unreachable	1.0.0		# MIT / Apache-2.0
MODCARGO_CRATES +=	utf8-ranges	1.0.1		# Unlicense/MIT
MODCARGO_CRATES +=	version_check	0.1.4		# MIT/Apache-2.0
MODCARGO_CRATES +=	void	1.0.2		# MIT
MODCARGO_CRATES +=	walkdir	2.2.5		# Unlicense/MIT
MODCARGO_CRATES +=	winapi	0.3.5		# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-i686-pc-windows-gnu	0.4.0		# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-util	0.1.1		# Unlicense/MIT
MODCARGO_CRATES +=	winapi-x86_64-pc-windows-gnu	0.4.0		# MIT/Apache-2.0
MODCARGO_CRATES +=	wincolor	1.0.1		# Unlicense/MIT

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
