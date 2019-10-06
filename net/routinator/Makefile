# $OpenBSD: Makefile,v 1.2 2019/10/06 20:12:26 sthen Exp $

COMMENT =		RPKI "relying party" software

GH_ACCOUNT =		NLnetLabs
GH_PROJECT =		routinator
GH_TAGNAME =		v0.6.1
REVISION =		0

CATEGORIES =		net

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi m pthread

MODULES =		devel/cargo
MODCARGO_INSTALL_ARGS =	--path .

CONFIGURE_STYLE =	cargo

RUN_DEPENDS =		net/rsync
SEPARATE_BUILD =	Yes

FIX_EXTRACT_PERMISSIONS = Yes
DISTFILES +=            ${DISTNAME}{${GH_TAGNAME}}${EXTRACT_SUFX}

MODCARGO_CRATES_UPDATE += libc
MODCARGO_CRATES +=	libc	0.2.63	# MIT OR Apache-2.0

MODCARGO_CRATES +=	adler32	1.0.3	# BSD-3-Clause AND Zlib
MODCARGO_CRATES +=	aho-corasick	0.7.6	# Unlicense/MIT
MODCARGO_CRATES +=	ansi_term	0.11.0	# MIT
MODCARGO_CRATES +=	arc-swap	0.4.2	# Apache-2.0/MIT
MODCARGO_CRATES +=	arrayref	0.3.5	# BSD-2-Clause
MODCARGO_CRATES +=	arrayvec	0.4.11	# MIT/Apache-2.0
MODCARGO_CRATES +=	atty	0.2.13	# MIT
MODCARGO_CRATES +=	autocfg	0.1.6	# Apache-2.0/MIT
MODCARGO_CRATES +=	backtrace	0.3.37	# MIT/Apache-2.0
MODCARGO_CRATES +=	backtrace-sys	0.1.31	# MIT/Apache-2.0
MODCARGO_CRATES +=	base64	0.10.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	bcder	0.4.0	# BSD-3-Clause
MODCARGO_CRATES +=	bitflags	1.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	blake2b_simd	0.5.8	# MIT
MODCARGO_CRATES +=	boxfnonce	0.1.1	# MIT
MODCARGO_CRATES +=	byteorder	1.3.2	# Unlicense OR MIT
MODCARGO_CRATES +=	bytes	0.4.12	# MIT
MODCARGO_CRATES +=	c2-chacha	0.2.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	cc	1.0.45	# MIT/Apache-2.0
MODCARGO_CRATES +=	cfg-if	0.1.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	chrono	0.4.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	clap	2.33.0	# MIT
MODCARGO_CRATES +=	cloudabi	0.0.3	# BSD-2-Clause
MODCARGO_CRATES +=	constant_time_eq	0.1.4	# CC0-1.0
MODCARGO_CRATES +=	cookie	0.12.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	cookie_store	0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	crc32fast	1.2.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	crossbeam-deque	0.7.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	crossbeam-epoch	0.7.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	crossbeam-queue	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	crossbeam-utils	0.6.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	ct-logs	0.5.1	# Apache-2.0/ISC/MIT
MODCARGO_CRATES +=	daemonize	0.4.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	derive_more	0.15.0	# MIT
MODCARGO_CRATES +=	dirs	2.0.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	dirs-sys	0.3.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	dtoa	0.4.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	either	1.5.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	encoding_rs	0.8.19	# MIT/Apache-2.0
MODCARGO_CRATES +=	error-chain	0.11.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	error-chain	0.12.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	failure	0.1.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	failure_derive	0.1.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	fern	0.5.8	# MIT
MODCARGO_CRATES +=	flate2	1.0.11	# MIT/Apache-2.0
MODCARGO_CRATES +=	fnv	1.0.6	# Apache-2.0 / MIT
MODCARGO_CRATES +=	fuchsia-cprng	0.1.1	# LICENSE
MODCARGO_CRATES +=	fuchsia-zircon	0.3.3	# BSD-3-Clause
MODCARGO_CRATES +=	fuchsia-zircon-sys	0.3.3	# BSD-3-Clause
MODCARGO_CRATES +=	futures	0.1.29	# MIT/Apache-2.0
MODCARGO_CRATES +=	futures-cpupool	0.1.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	getrandom	0.1.12	# MIT OR Apache-2.0
MODCARGO_CRATES +=	h2	0.1.26	# MIT
MODCARGO_CRATES +=	http	0.1.18	# MIT/Apache-2.0
MODCARGO_CRATES +=	http-body	0.1.0	# MIT
MODCARGO_CRATES +=	httparse	1.3.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	hyper	0.12.34	# MIT
MODCARGO_CRATES +=	hyper-rustls	0.16.1	# Apache-2.0/ISC/MIT
MODCARGO_CRATES +=	idna	0.1.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	idna	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	indexmap	1.2.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	iovec	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	itoa	0.4.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	json	0.11.15	# MIT/Apache-2.0
MODCARGO_CRATES +=	kernel32-sys	0.2.2	# MIT
MODCARGO_CRATES +=	lazy_static	1.4.0	# MIT/Apache-2.0
#MODCARGO_CRATES +=	libc	0.2.62	# MIT OR Apache-2.0
MODCARGO_CRATES +=	listenfd	0.3.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	lock_api	0.1.5	# Apache-2.0/MIT
MODCARGO_CRATES +=	log	0.4.8	# MIT OR Apache-2.0
MODCARGO_CRATES +=	log-reroute	0.1.4	# Apache-2.0/MIT
MODCARGO_CRATES +=	matches	0.1.8	# MIT
MODCARGO_CRATES +=	memchr	2.2.1	# Unlicense/MIT
MODCARGO_CRATES +=	memoffset	0.5.1	# MIT
MODCARGO_CRATES +=	mime	0.3.14	# MIT/Apache-2.0
MODCARGO_CRATES +=	mime_guess	2.0.1	# MIT
MODCARGO_CRATES +=	miniz_oxide	0.3.2	# MIT
MODCARGO_CRATES +=	mio	0.6.19	# MIT
MODCARGO_CRATES +=	mio-uds	0.6.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	miow	0.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	net2	0.2.33	# MIT/Apache-2.0
MODCARGO_CRATES +=	nodrop	0.1.13	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-integer	0.1.41	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-traits	0.2.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	num_cpus	1.10.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	once_cell	1.1.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	owning_ref	0.4.0	# MIT
MODCARGO_CRATES +=	parking_lot	0.7.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	parking_lot_core	0.4.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	percent-encoding	1.0.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	percent-encoding	2.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	ppv-lite86	0.2.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	proc-macro2	0.4.30	# MIT/Apache-2.0
MODCARGO_CRATES +=	proc-macro2	1.0.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	publicsuffix	1.5.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	quick-xml	0.16.1	# MIT
MODCARGO_CRATES +=	quote	0.6.13	# MIT OR Apache-2.0
MODCARGO_CRATES +=	quote	1.0.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand	0.6.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand	0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_chacha	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_chacha	0.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_core	0.3.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_core	0.4.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_core	0.5.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_hc	0.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_hc	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_isaac	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_jitter	0.1.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_os	0.1.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_pcg	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_xorshift	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rdrand	0.4.0	# ISC
MODCARGO_CRATES +=	redox_syscall	0.1.56	# MIT
MODCARGO_CRATES +=	redox_users	0.3.1	# MIT
MODCARGO_CRATES +=	regex	1.3.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	regex-syntax	0.6.12	# MIT/Apache-2.0
MODCARGO_CRATES +=	remove_dir_all	0.5.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	reqwest	0.9.19	# MIT/Apache-2.0
MODCARGO_CRATES +=	ring	0.14.6	# LICENSE
MODCARGO_CRATES +=	rpki	0.6.0	# BSD-3-Clause
MODCARGO_CRATES +=	rust-argon2	0.5.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustc-demangle	0.1.16	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustc_version	0.2.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustls	0.15.2	# Apache-2.0/ISC/MIT
MODCARGO_CRATES +=	ryu	1.0.0	# Apache-2.0 OR BSL-1.0
MODCARGO_CRATES +=	scopeguard	0.3.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	scopeguard	1.0.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	sct	0.5.0	# Apache-2.0/ISC/MIT
MODCARGO_CRATES +=	semver	0.9.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	semver-parser	0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	serde	1.0.100	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_derive	1.0.100	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_json	1.0.40	# MIT OR Apache-2.0
MODCARGO_CRATES +=	serde_urlencoded	0.5.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	slab	0.4.2	# MIT
MODCARGO_CRATES +=	smallvec	0.6.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	socks	0.3.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	spin	0.5.2	# MIT
MODCARGO_CRATES +=	stable_deref_trait	1.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	string	0.2.1	# MIT
MODCARGO_CRATES +=	strsim	0.8.0	# MIT
MODCARGO_CRATES +=	syn	0.15.44	# MIT OR Apache-2.0
MODCARGO_CRATES +=	syn	1.0.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	synstructure	0.10.2	# MIT
MODCARGO_CRATES +=	syslog	4.0.1	# MIT
MODCARGO_CRATES +=	tempfile	3.1.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	textwrap	0.11.0	# MIT
MODCARGO_CRATES +=	thread_local	0.3.6	# Apache-2.0/MIT
MODCARGO_CRATES +=	time	0.1.42	# MIT/Apache-2.0
MODCARGO_CRATES +=	tokio	0.1.22	# MIT
MODCARGO_CRATES +=	tokio-buf	0.1.1	# MIT
MODCARGO_CRATES +=	tokio-codec	0.1.1	# MIT
MODCARGO_CRATES +=	tokio-current-thread	0.1.6	# MIT
MODCARGO_CRATES +=	tokio-executor	0.1.8	# MIT
MODCARGO_CRATES +=	tokio-fs	0.1.6	# MIT
MODCARGO_CRATES +=	tokio-io	0.1.12	# MIT
MODCARGO_CRATES +=	tokio-reactor	0.1.9	# MIT
MODCARGO_CRATES +=	tokio-rustls	0.9.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	tokio-sync	0.1.6	# MIT
MODCARGO_CRATES +=	tokio-tcp	0.1.3	# MIT
MODCARGO_CRATES +=	tokio-threadpool	0.1.15	# MIT
MODCARGO_CRATES +=	tokio-timer	0.2.11	# MIT
MODCARGO_CRATES +=	tokio-udp	0.1.5	# MIT
MODCARGO_CRATES +=	tokio-uds	0.2.5	# MIT
MODCARGO_CRATES +=	toml	0.5.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	try-lock	0.2.2	# MIT
MODCARGO_CRATES +=	try_from	0.3.2	# MIT
MODCARGO_CRATES +=	unicase	2.5.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-bidi	0.3.4	# MIT / Apache-2.0
MODCARGO_CRATES +=	unicode-normalization	0.1.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-width	0.1.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-xid	0.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-xid	0.2.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	untrusted	0.6.2	# ISC
MODCARGO_CRATES +=	unwrap	1.2.1	# MIT OR BSD-3-Clause
MODCARGO_CRATES +=	url	1.7.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	url	2.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	uuid	0.6.5	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	uuid	0.7.4	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	vec_map	0.8.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	version_check	0.1.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	want	0.2.0	# MIT
MODCARGO_CRATES +=	wasi	0.7.0	# Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT
MODCARGO_CRATES +=	webpki	0.19.1	# LICENSE
MODCARGO_CRATES +=	webpki-roots	0.16.0	# MPL-2.0
MODCARGO_CRATES +=	winapi	0.2.8	# MIT
MODCARGO_CRATES +=	winapi	0.3.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-build	0.1.1	# MIT
MODCARGO_CRATES +=	winapi-i686-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-x86_64-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winreg	0.6.2	# MIT
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
