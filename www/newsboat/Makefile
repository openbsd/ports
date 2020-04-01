# $OpenBSD: Makefile,v 1.17 2020/04/01 18:18:11 fcambus Exp $

COMMENT =	RSS/Atom feed reader for text terminals

V =		2.19
DISTNAME =	newsboat-$V

CATEGORIES =	www

HOMEPAGE =	https://www.newsboat.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} c crypto curl curses iconv intl
WANTLIB +=	json-c m sqlite3 ssl stfl xml2

MASTER_SITES =	https://www.newsboat.org/releases/$V/

EXTRACT_SUFX =	.tar.xz

COMPILER =	base-clang ports-gcc

DISTFILES +=	${DISTNAME}${EXTRACT_SUFX}
MODULES =	devel/cargo

MODCARGO_BUILD =	No
MODCARGO_INSTALL =	No
MODCARGO_TEST =		No

# keep libc >=0.2.63 for sparc64 support
MODCARGO_CRATES_UPDATE +=	libc
MODCARGO_CRATES +=	libc	0.2.63	# MIT OR Apache-2.0

MODCARGO_CRATES +=	aho-corasick	0.6.9	# Unlicense/MIT
MODCARGO_CRATES +=	argon2rs	0.2.5	# MIT
MODCARGO_CRATES +=	arrayvec	0.4.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	autocfg	0.1.2	# Apache-2.0/MIT
MODCARGO_CRATES +=	backtrace	0.3.13	# MIT/Apache-2.0
MODCARGO_CRATES +=	backtrace-sys	0.1.28	# MIT/Apache-2.0
MODCARGO_CRATES +=	bit-set	0.5.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	bit-vec	0.5.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	bitflags	1.0.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	blake2-rfc	0.2.18	# MIT OR Apache-2.0
MODCARGO_CRATES +=	cc	1.0.29	# MIT/Apache-2.0
MODCARGO_CRATES +=	cfg-if	0.1.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	chrono	0.4.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	clap	2.33.0	# MIT
MODCARGO_CRATES +=	cloudabi	0.0.3	# BSD-2-Clause
MODCARGO_CRATES +=	constant_time_eq	0.1.3	# CC0-1.0
MODCARGO_CRATES +=	curl-sys	0.4.5	# MIT
MODCARGO_CRATES +=	dirs	1.0.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	failure	0.1.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	failure_derive	0.1.5	# MIT OR Apache-2.0
MODCARGO_CRATES +=	fnv	1.0.6	# Apache-2.0 / MIT
MODCARGO_CRATES +=	fuchsia-cprng	0.1.1	# LICENSE
MODCARGO_CRATES +=	gettext-rs	0.4.1	# MIT
MODCARGO_CRATES +=	gettext-sys	0.19.8	# MIT
MODCARGO_CRATES +=	idna	0.1.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	kernel32-sys	0.2.2	# MIT
MODCARGO_CRATES +=	lazy_static	0.2.11	# MIT/Apache-2.0
MODCARGO_CRATES +=	lazy_static	1.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	libz-sys	1.0.17	# MIT/Apache-2.0
MODCARGO_CRATES +=	locale_config	0.2.2	# MIT
MODCARGO_CRATES +=	lock_api	0.1.5	# Apache-2.0/MIT
MODCARGO_CRATES +=	matches	0.1.8	# MIT
MODCARGO_CRATES +=	memchr	2.1.3	# Unlicense/MIT
MODCARGO_CRATES +=	natord	1.0.9	# MIT
MODCARGO_CRATES +=	nodrop	0.1.13	# MIT/Apache-2.0
MODCARGO_CRATES +=	nom	4.2.3	# MIT
MODCARGO_CRATES +=	num-integer	0.1.39	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-traits	0.2.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	once_cell	0.1.8	# MIT OR Apache-2.0
MODCARGO_CRATES +=	openssl-sys	0.9.53	# MIT
MODCARGO_CRATES +=	parking_lot	0.7.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	parking_lot_core	0.4.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	percent-encoding	1.0.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	pkg-config	0.3.14	# MIT/Apache-2.0
MODCARGO_CRATES +=	proc-macro2	0.4.27	# MIT/Apache-2.0
MODCARGO_CRATES +=	proptest	0.7.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	quick-error	1.2.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	quote	0.6.11	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand	0.4.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand	0.5.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand	0.6.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_chacha	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_core	0.3.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_core	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_hc	0.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_isaac	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_jitter	0.1.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_os	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_pcg	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_xorshift	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rdrand	0.4.0	# ISC
MODCARGO_CRATES +=	redox_syscall	0.1.51	# MIT
MODCARGO_CRATES +=	redox_users	0.2.0	# MIT
MODCARGO_CRATES +=	regex	0.2.11	# MIT/Apache-2.0
MODCARGO_CRATES +=	regex	1.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	regex-syntax	0.4.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	regex-syntax	0.5.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	regex-syntax	0.6.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	remove_dir_all	0.5.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustc-demangle	0.1.13	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustc_version	0.2.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	rusty-fork	0.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	scoped_threadpool	0.1.9	# MIT
MODCARGO_CRATES +=	scopeguard	0.3.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	section_testing	0.0.4	# MIT
MODCARGO_CRATES +=	semver	0.9.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	semver-parser	0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	smallvec	0.6.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	syn	0.15.26	# MIT/Apache-2.0
MODCARGO_CRATES +=	synstructure	0.10.1	# MIT
MODCARGO_CRATES +=	tempfile	3.0.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	textwrap	0.11.0	# MIT
MODCARGO_CRATES +=	thread_local	0.3.6	# Apache-2.0/MIT
MODCARGO_CRATES +=	time	0.1.42	# MIT/Apache-2.0
MODCARGO_CRATES +=	ucd-util	0.1.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-bidi	0.3.4	# MIT / Apache-2.0
MODCARGO_CRATES +=	unicode-normalization	0.1.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-width	0.1.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-xid	0.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	url	1.7.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	utf8-ranges	1.0.2	# Unlicense/MIT
MODCARGO_CRATES +=	vcpkg	0.2.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	version_check	0.1.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	wait-timeout	0.1.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi	0.2.8	# MIT
MODCARGO_CRATES +=	winapi	0.3.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-build	0.1.1	# MIT
MODCARGO_CRATES +=	winapi-i686-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-x86_64-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	xdg	2.2.0	# Apache-2.0/MIT

BUILD_DEPENDS =	devel/gettext,-tools \
		textproc/asciidoctor

LIB_DEPENDS =	databases/sqlite3 \
		devel/gettext,-runtime \
		devel/stfl \
		devel/json-c \
		textproc/libxml \
		net/curl

MAKE_ENV =	${MODCARGO_ENV} \
		CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS}"
FAKE_FLAGS =	mandir="${PREFIX}/man"

USE_GMAKE =	Yes

ALL_TARGET =	all doc

CONFIGURE_STYLE = cargo simple
CONFIGURE_SCRIPT = config.sh

pre-configure:
	@sed -i 's,-Werror ,,g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
