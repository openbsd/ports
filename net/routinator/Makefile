# $OpenBSD: Makefile,v 1.10 2020/08/01 11:30:37 sthen Exp $

ONLY_FOR_ARCHS =	${RUST_ARCHS:Naarch64}

COMMENT =		RPKI "relying party" software

BROKEN-sparc64 = "error: failed to run custom build command for `ring v0.14.6`"

GH_ACCOUNT =		NLnetLabs
GH_PROJECT =		routinator
GH_TAGNAME =		v0.7.1
REVISION =		1

CATEGORIES =		net

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi m pthread

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

RUN_DEPENDS =		net/rsync
SEPARATE_BUILD =	Yes

FIX_EXTRACT_PERMISSIONS = Yes
DISTFILES +=            ${DISTNAME}{${GH_TAGNAME}}${EXTRACT_SUFX}

MODCARGO_CRATES +=	addr2line	0.12.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	ansi_term	0.11.0	# MIT
MODCARGO_CRATES +=	arc-swap	0.4.7	# Apache-2.0/MIT
MODCARGO_CRATES +=	arrayref	0.3.6	# BSD-2-Clause
MODCARGO_CRATES +=	arrayvec	0.5.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	atty	0.2.14	# MIT
MODCARGO_CRATES +=	autocfg	1.0.0	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	backtrace	0.3.48	# MIT/Apache-2.0
MODCARGO_CRATES +=	base64	0.11.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	base64	0.12.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	bcder	0.5.0	# BSD-3-Clause
MODCARGO_CRATES +=	bitflags	1.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	blake2b_simd	0.5.10	# MIT
MODCARGO_CRATES +=	boxfnonce	0.1.1	# MIT
MODCARGO_CRATES +=	bumpalo	3.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	byteorder	1.3.4	# Unlicense OR MIT
MODCARGO_CRATES +=	bytes	0.4.12	# MIT
MODCARGO_CRATES +=	bytes	0.5.4	# MIT
MODCARGO_CRATES +=	cc	1.0.54	# MIT/Apache-2.0
MODCARGO_CRATES +=	cfg-if	0.1.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	chrono	0.4.11	# MIT/Apache-2.0
MODCARGO_CRATES +=	clap	2.33.1	# MIT
MODCARGO_CRATES +=	constant_time_eq	0.1.5	# CC0-1.0
MODCARGO_CRATES +=	core-foundation	0.7.0	# MIT / Apache-2.0
MODCARGO_CRATES +=	core-foundation-sys	0.7.0	# MIT / Apache-2.0
MODCARGO_CRATES +=	crossbeam-queue	0.2.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	crossbeam-utils	0.7.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	daemonize	0.4.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	dirs	2.0.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	dirs-sys	0.3.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	dtoa	0.4.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	either	1.5.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	encoding_rs	0.8.23	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	error-chain	0.12.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	fern	0.6.0	# MIT
MODCARGO_CRATES +=	fnv	1.0.7	# Apache-2.0 / MIT
MODCARGO_CRATES +=	foreign-types	0.3.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	foreign-types-shared	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	fuchsia-zircon	0.3.3	# BSD-3-Clause
MODCARGO_CRATES +=	fuchsia-zircon-sys	0.3.3	# BSD-3-Clause
MODCARGO_CRATES +=	futures	0.3.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-channel	0.3.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-core	0.3.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-executor	0.3.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-io	0.3.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-macro	0.3.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-sink	0.3.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-task	0.3.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	futures-util	0.3.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	getrandom	0.1.14	# MIT OR Apache-2.0
MODCARGO_CRATES +=	gimli	0.21.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	h2	0.2.5	# MIT
MODCARGO_CRATES +=	hermit-abi	0.1.13	# MIT/Apache-2.0
MODCARGO_CRATES +=	http	0.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	http-body	0.3.1	# MIT
MODCARGO_CRATES +=	httparse	1.3.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	hyper	0.13.6	# MIT
MODCARGO_CRATES +=	hyper-rustls	0.20.0	# Apache-2.0/ISC/MIT
MODCARGO_CRATES +=	hyper-tls	0.4.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	idna	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	indexmap	1.4.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	iovec	0.1.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	itoa	0.4.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	js-sys	0.3.40	# MIT/Apache-2.0
MODCARGO_CRATES +=	json	0.12.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	kernel32-sys	0.2.2	# MIT
MODCARGO_CRATES +=	lazy_static	1.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	libc	0.2.71	# MIT OR Apache-2.0
MODCARGO_CRATES +=	listenfd	0.3.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	log	0.4.8	# MIT OR Apache-2.0
MODCARGO_CRATES +=	log-reroute	0.1.5	# Apache-2.0/MIT
MODCARGO_CRATES +=	matches	0.1.8	# MIT
MODCARGO_CRATES +=	memchr	2.3.3	# Unlicense/MIT
MODCARGO_CRATES +=	mime	0.3.16	# MIT/Apache-2.0
MODCARGO_CRATES +=	mime_guess	2.0.3	# MIT
MODCARGO_CRATES +=	mio	0.6.22	# MIT
MODCARGO_CRATES +=	mio-uds	0.6.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	miow	0.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	native-tls	0.2.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	net2	0.2.34	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-integer	0.1.42	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-traits	0.2.11	# MIT/Apache-2.0
MODCARGO_CRATES +=	num_cpus	1.13.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	object	0.19.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	once_cell	1.4.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	openssl	0.10.29	# Apache-2.0
MODCARGO_CRATES +=	openssl-probe	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	openssl-sys	0.9.58	# MIT
MODCARGO_CRATES +=	percent-encoding	2.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	pin-project	0.4.20	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	pin-project-internal	0.4.20	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	pin-project-lite	0.1.7	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	pin-utils	0.1.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	pkg-config	0.3.17	# MIT/Apache-2.0
MODCARGO_CRATES +=	ppv-lite86	0.2.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	proc-macro-hack	0.5.16	# MIT OR Apache-2.0
MODCARGO_CRATES +=	proc-macro-nested	0.1.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	proc-macro2	1.0.18	# MIT OR Apache-2.0
MODCARGO_CRATES +=	quick-xml	0.18.1	# MIT
MODCARGO_CRATES +=	quote	1.0.7	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand	0.7.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_chacha	0.2.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_core	0.5.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_hc	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	redox_syscall	0.1.56	# MIT
MODCARGO_CRATES +=	redox_users	0.3.4	# MIT
MODCARGO_CRATES +=	remove_dir_all	0.5.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	reqwest	0.10.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	ring	0.16.14	# LICENSE
MODCARGO_CRATES +=	rpki	0.9.2	# BSD-3-Clause
MODCARGO_CRATES +=	rpki-rtr	0.1.1	# BSD-3-Clause
MODCARGO_CRATES +=	rust-argon2	0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustc-demangle	0.1.16	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustc_version	0.2.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustls	0.17.0	# Apache-2.0/ISC/MIT
MODCARGO_CRATES +=	ryu	1.0.5	# Apache-2.0 OR BSL-1.0
MODCARGO_CRATES +=	schannel	0.1.19	# MIT
MODCARGO_CRATES +=	sct	0.6.0	# Apache-2.0/ISC/MIT
MODCARGO_CRATES +=	security-framework	0.4.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	security-framework-sys	0.4.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	semver	0.9.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	semver-parser	0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	serde	1.0.111	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_derive	1.0.111	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_json	1.0.53	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_urlencoded	0.6.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	signal-hook-registry	1.2.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	slab	0.4.2	# MIT
MODCARGO_CRATES +=	smallvec	1.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	socket2	0.3.12	# MIT/Apache-2.0
MODCARGO_CRATES +=	spin	0.5.2	# MIT
MODCARGO_CRATES +=	strsim	0.8.0	# MIT
MODCARGO_CRATES +=	syn	1.0.30	# MIT OR Apache-2.0
MODCARGO_CRATES +=	syslog	5.0.0	# MIT
MODCARGO_CRATES +=	tempfile	3.1.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	textwrap	0.11.0	# MIT
MODCARGO_CRATES +=	thiserror	1.0.19	# MIT OR Apache-2.0
MODCARGO_CRATES +=	thiserror-impl	1.0.19	# MIT OR Apache-2.0
MODCARGO_CRATES +=	time	0.1.43	# MIT/Apache-2.0
MODCARGO_CRATES +=	tokio	0.2.21	# MIT
MODCARGO_CRATES +=	tokio-macros	0.2.5	# MIT
MODCARGO_CRATES +=	tokio-rustls	0.13.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	tokio-socks	0.2.2	# MIT
MODCARGO_CRATES +=	tokio-tls	0.3.1	# MIT
MODCARGO_CRATES +=	tokio-util	0.3.1	# MIT
MODCARGO_CRATES +=	toml	0.5.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	tower-service	0.3.0	# MIT
MODCARGO_CRATES +=	try-lock	0.2.2	# MIT
MODCARGO_CRATES +=	unicase	2.6.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-bidi	0.3.4	# MIT / Apache-2.0
MODCARGO_CRATES +=	unicode-normalization	0.1.12	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-width	0.1.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-xid	0.2.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	untrusted	0.7.1	# ISC
MODCARGO_CRATES +=	unwrap	1.2.1	# MIT OR BSD-3-Clause
MODCARGO_CRATES +=	url	2.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	uuid	0.6.5	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	uuid	0.8.1	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	vcpkg	0.2.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	vec_map	0.8.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	version_check	0.9.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	want	0.3.0	# MIT
MODCARGO_CRATES +=	wasi	0.9.0+wasi-snapshot-preview1	# Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT
MODCARGO_CRATES +=	wasm-bindgen	0.2.63	# MIT/Apache-2.0
MODCARGO_CRATES +=	wasm-bindgen-backend	0.2.63	# MIT/Apache-2.0
MODCARGO_CRATES +=	wasm-bindgen-futures	0.4.13	# MIT/Apache-2.0
MODCARGO_CRATES +=	wasm-bindgen-macro	0.2.63	# MIT/Apache-2.0
MODCARGO_CRATES +=	wasm-bindgen-macro-support	0.2.63	# MIT/Apache-2.0
MODCARGO_CRATES +=	wasm-bindgen-shared	0.2.63	# MIT/Apache-2.0
MODCARGO_CRATES +=	web-sys	0.3.40	# MIT/Apache-2.0
MODCARGO_CRATES +=	webpki	0.21.3	# LICENSE
MODCARGO_CRATES +=	webpki-roots	0.19.0	# MPL-2.0
MODCARGO_CRATES +=	winapi	0.2.8	# MIT
MODCARGO_CRATES +=	winapi	0.3.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-build	0.1.1	# MIT
MODCARGO_CRATES +=	winapi-i686-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-x86_64-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winreg	0.7.0	# MIT
MODCARGO_CRATES +=	ws2_32-sys	0.2.1	# MIT

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/routinator
	${INSTALL_DATA} ${WRKSRC}/doc/routinator.1 ${PREFIX}/man/man1/
	cd ${WRKSRC}; ${PREFIX}/bin/routinator -b ${PREFIX}/share/routinator \
	    init --decline-arin-rpa
	${SUBST_DATA} ${WRKSRC}/etc/routinator.conf.system-service \
	    ${PREFIX}/share/examples/routinator/routinator.conf.system-service
	${INSTALL_DATA} ${WRKSRC}/etc/routinator.conf.example \
	    ${PREFIX}/share/examples/routinator/routinator.conf.example
	rm -rf ${PREFIX}/share/routinator/tals

.include <bsd.port.mk>
