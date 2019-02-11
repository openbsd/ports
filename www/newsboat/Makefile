# $OpenBSD: Makefile,v 1.7 2019/02/11 09:57:52 fcambus Exp $

COMMENT =	RSS/Atom feed reader for text terminals

V =		2.14
DISTNAME =	newsboat-$V

CATEGORIES =	www

HOMEPAGE =	https://www.newsboat.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	${COMPILER_LIBCXX} c crypto curl curses iconv intl
WANTLIB +=	json-c m sqlite3 stfl xml2

MASTER_SITES =	https://www.newsboat.org/releases/$V/

EXTRACT_SUFX =	.tar.xz

COMPILER =	base-clang ports-gcc

DISTFILES +=	${DISTNAME}${EXTRACT_SUFX}
MODULES =	devel/cargo

MODCARGO_BUILD =	No
MODCARGO_INSTALL =	No
MODCARGO_TEST =		No

MODCARGO_CRATES +=	aho-corasick	0.6.9	# Unlicense/MIT
MODCARGO_CRATES +=	argon2rs	0.2.5	# MIT
MODCARGO_CRATES +=	arrayvec	0.4.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	autocfg	0.1.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	backtrace	0.3.13	# MIT/Apache-2.0
MODCARGO_CRATES +=	backtrace-sys	0.1.26	# MIT/Apache-2.0
MODCARGO_CRATES +=	bitflags	1.0.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	blake2-rfc	0.2.18	# MIT OR Apache-2.0
MODCARGO_CRATES +=	cc	1.0.26	# MIT/Apache-2.0
MODCARGO_CRATES +=	cfg-if	0.1.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	chrono	0.4.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	cloudabi	0.0.3	# BSD-2-Clause
MODCARGO_CRATES +=	constant_time_eq	0.1.3	# CC0-1.0
MODCARGO_CRATES +=	dirs	1.0.4	# MIT OR Apache-2.0
MODCARGO_CRATES +=	failure	0.1.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	failure_derive	0.1.3	# MIT OR Apache-2.0
MODCARGO_CRATES +=	fuchsia-zircon	0.3.3	# BSD-3-Clause
MODCARGO_CRATES +=	fuchsia-zircon-sys	0.3.3	# BSD-3-Clause
MODCARGO_CRATES +=	idna	0.1.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	lazy_static	1.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	libc	0.2.45	# MIT OR Apache-2.0
MODCARGO_CRATES +=	lock_api	0.1.5	# Apache-2.0/MIT
MODCARGO_CRATES +=	matches	0.1.8	# MIT
MODCARGO_CRATES +=	memchr	2.1.2	# Unlicense/MIT
MODCARGO_CRATES +=	nodrop	0.1.13	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-integer	0.1.39	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-traits	0.2.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	once_cell	0.1.6	# MIT OR Apache-2.0
MODCARGO_CRATES +=	parking_lot	0.6.4	# Apache-2.0/MIT
MODCARGO_CRATES +=	parking_lot_core	0.3.1	# Apache-2.0/MIT
MODCARGO_CRATES +=	percent-encoding	1.0.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	proc-macro2	0.4.24	# MIT/Apache-2.0
MODCARGO_CRATES +=	quote	0.6.10	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand	0.4.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand	0.5.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand	0.6.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_chacha	0.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_core	0.2.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_core	0.3.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_hc	0.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_isaac	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_pcg	0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand_xorshift	0.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	redox_syscall	0.1.44	# MIT
MODCARGO_CRATES +=	redox_users	0.2.0	# MIT
MODCARGO_CRATES +=	regex	1.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	regex-syntax	0.6.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	remove_dir_all	0.5.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustc-demangle	0.1.11	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustc_version	0.2.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	scoped_threadpool	0.1.9	# MIT
MODCARGO_CRATES +=	scopeguard	0.3.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	semver	0.9.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	semver-parser	0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	smallvec	0.6.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	syn	0.15.23	# MIT/Apache-2.0
MODCARGO_CRATES +=	synstructure	0.10.1	# MIT
MODCARGO_CRATES +=	tempfile	3.0.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	thread_local	0.3.6	# Apache-2.0/MIT
MODCARGO_CRATES +=	time	0.1.41	# MIT/Apache-2.0
MODCARGO_CRATES +=	ucd-util	0.1.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-bidi	0.3.4	# MIT / Apache-2.0
MODCARGO_CRATES +=	unicode-normalization	0.1.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-xid	0.1.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	unreachable	1.0.0	# MIT / Apache-2.0
MODCARGO_CRATES +=	url	1.7.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	utf8-ranges	1.0.2	# Unlicense/MIT
MODCARGO_CRATES +=	version_check	0.1.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	void	1.0.2	# MIT
MODCARGO_CRATES +=	winapi	0.3.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-i686-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-x86_64-pc-windows-gnu	0.4.0	# MIT/Apache-2.0

BUILD_DEPENDS =	devel/gettext-tools \
		textproc/asciidoc

LIB_DEPENDS =	databases/sqlite3 \
		devel/gettext \
		devel/stfl \
		devel/json-c \
		textproc/libxml \
		net/curl

MAKE_ENV =	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"
FAKE_FLAGS =	mandir="${PREFIX}/man"

USE_GMAKE =	Yes

ALL_TARGET =	all doc

CONFIGURE_STYLE = cargo simple
CONFIGURE_SCRIPT = config.sh

pre-configure:
	@sed -i 's,-Werror ,,g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
