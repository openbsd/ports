# $OpenBSD: Makefile,v 1.1.1.1 2020/03/11 12:25:53 sthen Exp $

COMMENT =		GitHub webhooks runner daemon

V =			0.3.0
DISTNAME =		snare-$V

CATEGORIES =		devel

HOMEPAGE =		https://tratt.net/laurie/src/snare/
MASTER_SITES =		${HOMEPAGE}releases/
EXTRACT_SUFX =		.tgz

MAINTAINER =            Laurence Tratt <laurie@tratt.net>

# Apache-2.0/MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c c++abi m pthread

DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}
MODULES =		devel/cargo

MODCARGO_CRATES +=	aho-corasick	0.7.9	# Unlicense/MIT
MODCARGO_CRATES +=	arc-swap	0.4.4	# Apache-2.0/MIT
MODCARGO_CRATES +=	ascii_utils	0.9.3	# MPL-2.0
MODCARGO_CRATES +=	autocfg	1.0.0	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	backtrace	0.3.45	# MIT/Apache-2.0
MODCARGO_CRATES +=	backtrace-sys	0.1.33	# MIT/Apache-2.0
MODCARGO_CRATES +=	base64	0.10.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	bincode	1.2.1	# MIT
MODCARGO_CRATES +=	bitflags	1.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	block-buffer	0.7.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	block-padding	0.1.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	bufstream	0.1.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	byte-tools	0.3.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	byteorder	1.3.4	# Unlicense OR MIT
MODCARGO_CRATES +=	bytes	0.5.4	# MIT
MODCARGO_CRATES +=	c2-chacha	0.2.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	cactus	1.0.5	# Apache-2.0/MIT
MODCARGO_CRATES +=	cc	1.0.50	# MIT/Apache-2.0
MODCARGO_CRATES +=	cfg-if	0.1.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	cfgrammar	0.6.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	chrono	0.4.11	# MIT/Apache-2.0
MODCARGO_CRATES +=	core-foundation	0.7.0	# MIT / Apache-2.0
MODCARGO_CRATES +=	core-foundation-sys	0.7.0	# MIT / Apache-2.0
MODCARGO_CRATES +=	crypto-mac	0.7.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	digest	0.8.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	error-chain	0.12.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	fake-simd	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	fast_chemail	0.9.6	# MPL-2.0
MODCARGO_CRATES +=	filetime	0.2.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	fnv	1.0.6	# Apache-2.0 / MIT
MODCARGO_CRATES +=	foreign-types	0.3.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	foreign-types-shared	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	fuchsia-zircon	0.3.3	# BSD-3-Clause
MODCARGO_CRATES +=	fuchsia-zircon-sys	0.3.3	# BSD-3-Clause
MODCARGO_CRATES +=	futures-channel	0.3.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-core	0.3.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-sink	0.3.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-task	0.3.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-util	0.3.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	generic-array	0.12.3	# MIT
MODCARGO_CRATES +=	getopts	0.2.21	# MIT/Apache-2.0
MODCARGO_CRATES +=	getrandom	0.1.14	# MIT OR Apache-2.0
MODCARGO_CRATES +=	getset	0.1.0	# MIT
MODCARGO_CRATES +=	h2	0.2.2	# MIT
MODCARGO_CRATES +=	hermit-abi	0.1.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	hex	0.4.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	hmac	0.7.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	hostname	0.1.5	# MIT
MODCARGO_CRATES +=	http	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	http-body	0.3.1	# MIT
MODCARGO_CRATES +=	httparse	1.3.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	hyper	0.13.3	# MIT
MODCARGO_CRATES +=	indexmap	1.3.2	# Apache-2.0/MIT
MODCARGO_CRATES +=	iovec	0.1.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	itoa	0.4.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	json	0.12.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	kernel32-sys	0.2.2	# MIT
MODCARGO_CRATES +=	lazy_static	1.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	lettre	0.9.2	# MIT
MODCARGO_CRATES +=	libc	0.2.67	# MIT OR Apache-2.0
MODCARGO_CRATES +=	log	0.4.8	# MIT OR Apache-2.0
MODCARGO_CRATES +=	lrlex	0.6.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	lrpar	0.6.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	lrtable	0.6.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	macro-attr	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	memchr	2.3.3	# Unlicense/MIT
MODCARGO_CRATES +=	mio	0.6.21	# MIT
MODCARGO_CRATES +=	mio-named-pipes	0.1.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	mio-uds	0.6.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	miow	0.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	miow	0.3.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	native-tls	0.2.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	net2	0.2.33	# MIT/Apache-2.0
MODCARGO_CRATES +=	newtype_derive	0.1.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	nix	0.17.0	# MIT
MODCARGO_CRATES +=	nom	4.2.3	# MIT
MODCARGO_CRATES +=	num-integer	0.1.42	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-traits	0.2.11	# MIT/Apache-2.0
MODCARGO_CRATES +=	num_cpus	1.12.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	opaque-debug	0.2.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	openssl	0.10.28	# Apache-2.0
MODCARGO_CRATES +=	openssl-probe	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	openssl-sys	0.9.54	# MIT
MODCARGO_CRATES +=	packedvec	1.2.2	# Apache-2.0/MIT
MODCARGO_CRATES +=	percent-encoding	2.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	pin-project	0.4.8	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	pin-project-internal	0.4.8	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	pin-project-lite	0.1.4	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	pin-utils	0.1.0-alpha.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	pkg-config	0.3.17	# MIT/Apache-2.0
MODCARGO_CRATES +=	ppv-lite86	0.2.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	proc-macro-error	0.4.11	# MIT OR Apache-2.0
MODCARGO_CRATES +=	proc-macro-error-attr	0.4.11	# MIT OR Apache-2.0
MODCARGO_CRATES +=	proc-macro2	1.0.9	# MIT OR Apache-2.0
MODCARGO_CRATES +=	quote	1.0.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand	0.7.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_chacha	0.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_core	0.5.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_hc	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	redox_syscall	0.1.56	# MIT
MODCARGO_CRATES +=	regex	1.3.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	regex-syntax	0.6.16	# MIT/Apache-2.0
MODCARGO_CRATES +=	remove_dir_all	0.5.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	rmp	0.8.9	# MIT
MODCARGO_CRATES +=	rmp-serde	0.14.3	# MIT
MODCARGO_CRATES +=	rustc-demangle	0.1.16	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustc_version	0.1.7	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rustc_version	0.2.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	ryu	1.0.2	# Apache-2.0 OR BSL-1.0
MODCARGO_CRATES +=	schannel	0.1.17	# MIT
MODCARGO_CRATES +=	secstr	0.4.0	# Unlicense
MODCARGO_CRATES +=	security-framework	0.4.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	security-framework-sys	0.4.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	semver	0.1.20	# MIT/Apache-2.0
MODCARGO_CRATES +=	semver	0.9.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	semver-parser	0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	serde	1.0.104	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_derive	1.0.104	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_json	1.0.48	# MIT OR Apache-2.0
MODCARGO_CRATES +=	sha-1	0.8.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	signal-hook	0.1.13	# Apache-2.0/MIT
MODCARGO_CRATES +=	signal-hook-registry	1.2.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	slab	0.4.2	# MIT
MODCARGO_CRATES +=	socket2	0.3.11	# MIT/Apache-2.0
MODCARGO_CRATES +=	sparsevec	0.1.3	# Apache-2.0/MIT
MODCARGO_CRATES +=	static_assertions	1.1.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	subtle	1.0.0	# BSD-3-Clause
MODCARGO_CRATES +=	syn	1.0.16	# MIT OR Apache-2.0
MODCARGO_CRATES +=	syn-mid	0.5.0	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	tempfile	3.1.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	thread_local	1.0.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	time	0.1.42	# MIT/Apache-2.0
MODCARGO_CRATES +=	tokio	0.2.13	# MIT
MODCARGO_CRATES +=	tokio-macros	0.2.5	# MIT
MODCARGO_CRATES +=	tokio-util	0.2.0	# MIT
MODCARGO_CRATES +=	tower-service	0.3.0	# MIT
MODCARGO_CRATES +=	try-lock	0.2.2	# MIT
MODCARGO_CRATES +=	try_from	0.3.2	# MIT
MODCARGO_CRATES +=	typename	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	typename_derive	0.1.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	typenum	1.11.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-width	0.1.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-xid	0.2.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	users	0.9.1	# MIT
MODCARGO_CRATES +=	vcpkg	0.2.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	vergen	2.1.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	version_check	0.1.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	version_check	0.9.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	vob	2.0.4	# Apache-2.0/MIT
MODCARGO_CRATES +=	void	1.0.2	# MIT
MODCARGO_CRATES +=	want	0.3.0	# MIT
MODCARGO_CRATES +=	wasi	0.9.0+wasi-snapshot-preview1	# Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT
MODCARGO_CRATES +=	whoami	0.7.0	# MIT / BSL-1.0
MODCARGO_CRATES +=	winapi	0.2.8	# MIT
MODCARGO_CRATES +=	winapi	0.3.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-build	0.1.1	# MIT
MODCARGO_CRATES +=	winapi-i686-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-x86_64-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winutil	0.1.1	# MIT
MODCARGO_CRATES +=	ws2_32-sys	0.2.1	# MIT

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
