# $OpenBSD: Makefile,v 1.23 2021/01/09 18:22:12 fcambus Exp $

COMMENT =	RSS/Atom feed reader for text terminals

V =		2.22
DISTNAME =	newsboat-$V
REVISION =	0

CATEGORIES =	www

HOMEPAGE =	https://www.newsboat.org/

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

MODCARGO_CRATES +=	addr2line	0.13.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	adler	0.2.3	# 0BSD OR MIT OR Apache-2.0
MODCARGO_CRATES +=	aho-corasick	0.7.13	# Unlicense/MIT
MODCARGO_CRATES +=	arrayvec	0.5.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	autocfg	1.0.1	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	backtrace	0.3.50	# MIT/Apache-2.0
MODCARGO_CRATES +=	bit-set	0.5.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	bit-vec	0.6.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	bitflags	1.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	bitvec	0.19.4	# MIT
MODCARGO_CRATES +=	block	0.1.6	# MIT
MODCARGO_CRATES +=	byteorder	1.3.4	# Unlicense OR MIT
MODCARGO_CRATES +=	cc	1.0.60	# MIT/Apache-2.0
MODCARGO_CRATES +=	cfg-if	0.1.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	chrono	0.4.19	# MIT/Apache-2.0
MODCARGO_CRATES +=	clap	2.33.3	# MIT
MODCARGO_CRATES +=	codespan-reporting	0.9.5	# Apache-2.0
MODCARGO_CRATES +=	curl-sys	0.4.39+curl-7.74.0	# MIT
MODCARGO_CRATES +=	cxx	0.5.10	# MIT OR Apache-2.0
MODCARGO_CRATES +=	cxx-build	0.5.10	# MIT OR Apache-2.0
MODCARGO_CRATES +=	cxxbridge-flags	0.5.10	# MIT OR Apache-2.0
MODCARGO_CRATES +=	cxxbridge-macro	0.5.10	# MIT OR Apache-2.0
MODCARGO_CRATES +=	fnv	1.0.7	# Apache-2.0 / MIT
MODCARGO_CRATES +=	form_urlencoded	1.0.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	funty	1.0.1	# MIT
MODCARGO_CRATES +=	getrandom	0.1.15	# MIT OR Apache-2.0
MODCARGO_CRATES +=	gettext-rs	0.5.0	# MIT
MODCARGO_CRATES +=	gettext-sys	0.19.9	# MIT
MODCARGO_CRATES +=	gimli	0.22.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	idna	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	lazy_static	1.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	lexical-core	0.7.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	libc	0.2.81	# MIT OR Apache-2.0
MODCARGO_CRATES +=	libz-sys	1.1.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	link-cplusplus	1.0.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	locale_config	0.3.0	# MIT
MODCARGO_CRATES +=	malloc_buf	0.0.6	# MIT
MODCARGO_CRATES +=	matches	0.1.8	# MIT
MODCARGO_CRATES +=	memchr	2.3.3	# Unlicense/MIT
MODCARGO_CRATES +=	miniz_oxide	0.4.2	# MIT
MODCARGO_CRATES +=	natord	1.0.9	# MIT
MODCARGO_CRATES +=	nom	6.0.1	# MIT
MODCARGO_CRATES +=	num-integer	0.1.43	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-traits	0.2.12	# MIT/Apache-2.0
MODCARGO_CRATES +=	objc	0.2.7	# MIT
MODCARGO_CRATES +=	objc-foundation	0.1.1	# MIT
MODCARGO_CRATES +=	objc_id	0.1.1	# MIT
MODCARGO_CRATES +=	object	0.20.0	# Apache-2.0/MIT
MODCARGO_CRATES +=	once_cell	1.5.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	openssl-sys	0.9.58	# MIT
MODCARGO_CRATES +=	percent-encoding	2.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	pkg-config	0.3.18	# MIT/Apache-2.0
MODCARGO_CRATES +=	ppv-lite86	0.2.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	proc-macro2	1.0.24	# MIT OR Apache-2.0
MODCARGO_CRATES +=	proptest	0.10.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	quick-error	1.2.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	quote	1.0.7	# MIT OR Apache-2.0
MODCARGO_CRATES +=	radium	0.5.3	# MIT
MODCARGO_CRATES +=	rand	0.7.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_chacha	0.2.2	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_core	0.5.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	rand_hc	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_xorshift	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	redox_syscall	0.1.57	# MIT
MODCARGO_CRATES +=	regex	1.3.9	# MIT OR Apache-2.0
MODCARGO_CRATES +=	regex-syntax	0.6.18	# MIT/Apache-2.0
MODCARGO_CRATES +=	remove_dir_all	0.5.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustc-demangle	0.1.16	# MIT/Apache-2.0
MODCARGO_CRATES +=	rusty-fork	0.3.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	ryu	1.0.5	# Apache-2.0 OR BSL-1.0
MODCARGO_CRATES +=	scratch	1.0.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	section_testing	0.0.4	# MIT
MODCARGO_CRATES +=	static_assertions	1.1.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	syn	1.0.48	# MIT OR Apache-2.0
MODCARGO_CRATES +=	tap	1.0.0	# MIT
MODCARGO_CRATES +=	tempfile	3.1.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	termcolor	1.1.0	# Unlicense OR MIT
MODCARGO_CRATES +=	textwrap	0.11.0	# MIT
MODCARGO_CRATES +=	thread_local	1.0.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	time	0.1.44	# MIT/Apache-2.0
MODCARGO_CRATES +=	tinyvec	0.3.4	# Zlib OR Apache-2.0 OR MIT
MODCARGO_CRATES +=	unicode-bidi	0.3.4	# MIT / Apache-2.0
MODCARGO_CRATES +=	unicode-normalization	0.1.13	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-width	0.1.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-xid	0.2.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	url	2.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	vcpkg	0.2.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	version_check	0.9.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	wait-timeout	0.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	wasi	0.9.0+wasi-snapshot-preview1	# Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT
MODCARGO_CRATES +=	wasi	0.10.0+wasi-snapshot-preview1	# Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT
MODCARGO_CRATES +=	winapi	0.3.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-i686-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-util	0.1.5	# Unlicense/MIT
MODCARGO_CRATES +=	winapi-x86_64-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	wyz	0.2.0	# MIT
MODCARGO_CRATES +=	xdg	2.2.0	# Apache-2.0/MIT

BUILD_DEPENDS =	devel/gettext,-tools \
		textproc/asciidoctor

RUN_DEPENDS =	x11/gtk+3,-guic

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
