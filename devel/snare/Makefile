COMMENT =		GitHub webhooks runner daemon

V =			0.4.8
DISTNAME =		snare-$V

CATEGORIES =		devel

HOMEPAGE =		https://tratt.net/laurie/src/snare/
SITES =			${HOMEPAGE}releases/
EXTRACT_SUFX =		.tgz

MAINTAINER =            Laurence Tratt <laurie@tratt.net>

# Apache-2.0/MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c c++abi m pthread

DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}
MODULES =		devel/cargo

MODCARGO_CRATES +=	aho-corasick	0.7.20	# Unlicense OR MIT
MODCARGO_CRATES +=	anyhow	1.0.69	# MIT OR Apache-2.0
MODCARGO_CRATES +=	autocfg	1.1.0	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	bincode	1.3.3	# MIT
MODCARGO_CRATES +=	bitflags	1.3.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	block-buffer	0.10.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	bstr	1.3.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	bytes	1.4.0	# MIT
MODCARGO_CRATES +=	cactus	1.0.6	# Apache-2.0/MIT
MODCARGO_CRATES +=	cc	1.0.79	# MIT OR Apache-2.0
MODCARGO_CRATES +=	cfg-if	1.0.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	cfgrammar	0.13.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	cpufeatures	0.2.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	crypto-common	0.1.6	# MIT OR Apache-2.0
MODCARGO_CRATES +=	crypto-mac	0.11.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	digest	0.10.6	# MIT OR Apache-2.0
MODCARGO_CRATES +=	enum-iterator	1.4.0	# 0BSD
MODCARGO_CRATES +=	enum-iterator-derive	1.2.0	# 0BSD
MODCARGO_CRATES +=	errno	0.2.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	errno-dragonfly	0.1.2	# MIT
MODCARGO_CRATES +=	fastrand	1.9.0	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	filetime	0.2.20	# MIT/Apache-2.0
MODCARGO_CRATES +=	fnv	1.0.7	# Apache-2.0 / MIT
MODCARGO_CRATES +=	futures-channel	0.3.26	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-core	0.3.26	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-task	0.3.26	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-util	0.3.26	# MIT OR Apache-2.0
MODCARGO_CRATES +=	generic-array	0.14.6	# MIT
MODCARGO_CRATES +=	getopts	0.2.21	# MIT/Apache-2.0
MODCARGO_CRATES +=	getset	0.1.2	# MIT
MODCARGO_CRATES +=	globset	0.4.10	# Unlicense OR MIT
MODCARGO_CRATES +=	hashbrown	0.12.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	hermit-abi	0.2.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	hex	0.4.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	hmac	0.12.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	http	0.2.9	# MIT OR Apache-2.0
MODCARGO_CRATES +=	http-body	0.4.5	# MIT
MODCARGO_CRATES +=	httparse	1.8.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	httpdate	1.0.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	hyper	0.14.24	# MIT
MODCARGO_CRATES +=	ignore	0.4.20	# Unlicense OR MIT
MODCARGO_CRATES +=	indexmap	1.9.2	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	instant	0.1.12	# BSD-3-Clause
MODCARGO_CRATES +=	io-lifetimes	1.0.6	# Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT
MODCARGO_CRATES +=	itoa	1.0.6	# MIT OR Apache-2.0
MODCARGO_CRATES +=	lazy_static	1.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	libc	0.2.139	# MIT OR Apache-2.0
MODCARGO_CRATES +=	linux-raw-sys	0.1.4	# Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT
MODCARGO_CRATES +=	lock_api	0.4.9	# MIT OR Apache-2.0
MODCARGO_CRATES +=	log	0.4.17	# MIT OR Apache-2.0
MODCARGO_CRATES +=	lrlex	0.13.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	lrpar	0.13.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	lrtable	0.13.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	memchr	2.5.0	# Unlicense/MIT
MODCARGO_CRATES +=	memoffset	0.7.1	# MIT
MODCARGO_CRATES +=	mio	0.8.6	# MIT
MODCARGO_CRATES +=	nix	0.26.2	# MIT
MODCARGO_CRATES +=	num-traits	0.2.15	# MIT OR Apache-2.0
MODCARGO_CRATES +=	num_cpus	1.15.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	once_cell	1.17.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	packedvec	1.2.4	# Apache-2.0/MIT
MODCARGO_CRATES +=	parking_lot	0.12.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	parking_lot_core	0.9.7	# MIT OR Apache-2.0
MODCARGO_CRATES +=	percent-encoding	2.2.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	pest	2.5.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	pin-project-lite	0.2.9	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	pin-utils	0.1.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	proc-macro-error	1.0.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	proc-macro-error-attr	1.0.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	proc-macro2	1.0.51	# MIT OR Apache-2.0
MODCARGO_CRATES +=	quote	1.0.23	# MIT OR Apache-2.0
MODCARGO_CRATES +=	redox_syscall	0.2.16	# MIT
MODCARGO_CRATES +=	regex	1.7.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	regex-syntax	0.6.28	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rerun_except	1.0.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	rustc_version	0.3.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustix	0.36.9	# Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT
MODCARGO_CRATES +=	rustversion	1.0.12	# MIT OR Apache-2.0
MODCARGO_CRATES +=	ryu	1.0.13	# Apache-2.0 OR BSL-1.0
MODCARGO_CRATES +=	same-file	1.0.6	# Unlicense/MIT
MODCARGO_CRATES +=	scopeguard	1.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	secstr	0.5.1	# Unlicense
MODCARGO_CRATES +=	semver	0.11.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	semver-parser	0.10.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	serde	1.0.152	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_derive	1.0.152	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_json	1.0.94	# MIT OR Apache-2.0
MODCARGO_CRATES +=	sha-1	0.10.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	signal-hook	0.3.15	# Apache-2.0/MIT
MODCARGO_CRATES +=	signal-hook-registry	1.4.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	smallvec	1.10.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	socket2	0.4.9	# MIT OR Apache-2.0
MODCARGO_CRATES +=	sparsevec	0.2.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	static_assertions	1.1.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	subtle	2.4.1	# BSD-3-Clause
MODCARGO_CRATES +=	syn	1.0.109	# MIT OR Apache-2.0
MODCARGO_CRATES +=	tempfile	3.4.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	thiserror	1.0.39	# MIT OR Apache-2.0
MODCARGO_CRATES +=	thiserror-impl	1.0.39	# MIT OR Apache-2.0
MODCARGO_CRATES +=	thread_local	1.1.7	# MIT OR Apache-2.0
MODCARGO_CRATES +=	time	0.3.20	# MIT OR Apache-2.0
MODCARGO_CRATES +=	time-core	0.1.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	time-macros	0.2.8	# MIT OR Apache-2.0
MODCARGO_CRATES +=	tokio	1.26.0	# MIT
MODCARGO_CRATES +=	tokio-macros	1.8.2	# MIT
MODCARGO_CRATES +=	tower-service	0.3.2	# MIT
MODCARGO_CRATES +=	tracing	0.1.37	# MIT
MODCARGO_CRATES +=	tracing-core	0.1.30	# MIT
MODCARGO_CRATES +=	try-lock	0.2.4	# MIT
MODCARGO_CRATES +=	typenum	1.16.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	ucd-trie	0.1.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	unicode-ident	1.0.8	# (MIT OR Apache-2.0) AND Unicode-DFS-2016
MODCARGO_CRATES +=	unicode-width	0.1.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	users	0.11.0	# MIT
MODCARGO_CRATES +=	vergen	7.5.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	version_check	0.9.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	vob	3.0.2	# Apache-2.0/MIT
MODCARGO_CRATES +=	walkdir	2.3.2	# Unlicense/MIT
MODCARGO_CRATES +=	want	0.3.0	# MIT
MODCARGO_CRATES +=	wasi	0.11.0+wasi-snapshot-preview1	# Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT
MODCARGO_CRATES +=	winapi	0.3.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-i686-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-util	0.1.5	# Unlicense/MIT
MODCARGO_CRATES +=	winapi-x86_64-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	windows-sys	0.42.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	windows-sys	0.45.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	windows-targets	0.42.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	windows_aarch64_gnullvm	0.42.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	windows_aarch64_msvc	0.42.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	windows_i686_gnu	0.42.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	windows_i686_msvc	0.42.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	windows_x86_64_gnu	0.42.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	windows_x86_64_gnullvm	0.42.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	windows_x86_64_msvc	0.42.1	# MIT OR Apache-2.0

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

MODCARGO_RUSTFLAGS =	-C debuginfo=0

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/snare ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/snare.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/snare.conf.5 ${PREFIX}/man/man5/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/snare
	${INSTALL_DATA} ${WRKSRC}/snare.conf.example ${PREFIX}/share/examples/snare/snare.conf

.include <bsd.port.mk>
