# $OpenBSD: Makefile,v 1.9 2020/03/02 07:20:23 semarie Exp $

COMMENT =		ls alternative written in Rust

GH_ACCOUNT =		ogham
GH_PROJECT =		exa
GH_TAGNAME =		v0.9.0
REVISION =		0

CATEGORIES =		sysutils

# Unlicense/MIT
PERMIT_PACKAGE =	Yes

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo

# keep libc >=0.2.63 for sparc64 support
MODCARGO_CRATES_UPDATE +=	libc
MODCARGO_CRATES +=	libc	0.2.63	# MIT OR Apache-2.0

MODCARGO_CRATES +=	aho-corasick	0.7.3	# Unlicense/MIT
MODCARGO_CRATES +=	ansi_term	0.12.0	# MIT
MODCARGO_CRATES +=	atty	0.2.11	# MIT
MODCARGO_CRATES +=	autocfg	0.1.4	# Apache-2.0/MIT
MODCARGO_CRATES +=	bitflags	1.0.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	byteorder	1.3.2	# Unlicense OR MIT
MODCARGO_CRATES +=	cc	1.0.35	# MIT/Apache-2.0
MODCARGO_CRATES +=	cfg-if	0.1.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	datetime	0.4.7	# MIT
MODCARGO_CRATES +=	env_logger	0.6.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	git2	0.9.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	glob	0.3.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	humantime	1.2.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	idna	0.1.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	iso8601	0.1.1	# MIT
MODCARGO_CRATES +=	kernel32-sys	0.2.2	# MIT
MODCARGO_CRATES +=	lazy_static	1.3.0	# MIT/Apache-2.0
#MODCARGO_CRATES +=	libc	0.2.51	# MIT OR Apache-2.0
MODCARGO_CRATES +=	libgit2-sys	0.8.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	libz-sys	1.0.25	# MIT/Apache-2.0
MODCARGO_CRATES +=	locale	0.2.2	# MIT
MODCARGO_CRATES +=	log	0.4.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	matches	0.1.8	# MIT
MODCARGO_CRATES +=	memchr	2.2.0	# Unlicense/MIT
MODCARGO_CRATES +=	natord	1.0.9	# MIT
MODCARGO_CRATES +=	nom	1.2.4	# MIT
MODCARGO_CRATES +=	num-traits	0.1.43	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-traits	0.2.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	num_cpus	1.10.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	number_prefix	0.3.0	# MIT
MODCARGO_CRATES +=	openssl-src	111.3.0+1.1.1c	# MIT/Apache-2.0
MODCARGO_CRATES +=	openssl-sys	0.9.47	# MIT
MODCARGO_CRATES +=	pad	0.1.5	# MIT
MODCARGO_CRATES +=	percent-encoding	1.0.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	pkg-config	0.3.14	# MIT/Apache-2.0
MODCARGO_CRATES +=	quick-error	1.2.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	redox_syscall	0.1.54	# MIT
MODCARGO_CRATES +=	redox_termios	0.1.1	# MIT
MODCARGO_CRATES +=	regex	1.1.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	regex-syntax	0.6.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	scoped_threadpool	0.1.9	# MIT
MODCARGO_CRATES +=	smallvec	0.6.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	term_grid	0.1.7	# MIT
MODCARGO_CRATES +=	term_size	0.3.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	termcolor	1.0.4	# Unlicense OR MIT
MODCARGO_CRATES +=	termion	1.5.1	# MIT
MODCARGO_CRATES +=	thread_local	0.3.6	# Apache-2.0/MIT
MODCARGO_CRATES +=	ucd-util	0.1.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-bidi	0.3.4	# MIT / Apache-2.0
MODCARGO_CRATES +=	unicode-normalization	0.1.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-width	0.1.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	url	1.7.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	users	0.9.1	# MIT
MODCARGO_CRATES +=	utf8-ranges	1.0.2	# Unlicense/MIT
MODCARGO_CRATES +=	vcpkg	0.2.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi	0.2.8	# MIT
MODCARGO_CRATES +=	winapi	0.3.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-build	0.1.1	# MIT
MODCARGO_CRATES +=	winapi-i686-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-util	0.1.2	# Unlicense/MIT
MODCARGO_CRATES +=	winapi-x86_64-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	wincolor	1.0.1	# Unlicense/MIT
MODCARGO_CRATES +=	zoneinfo_compiled	0.4.8	# MIT

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

MAKE_ENV +=		LIBGIT2_SYS_USE_PKG_CONFIG=1

LIB_DEPENDS +=		devel/libgit2/libgit2
WANTLIB +=		c c++abi pthread git2

MODCARGO_FEATURES =	git

# test result: FAILED. 368 passed; 16 failed; 4 ignored; 0 measured; 0 filtered out
#NO_TEST =	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/contrib/man/exa.1 ${PREFIX}/man/man1/exa.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions/
	${INSTALL_DATA} ${WRKSRC}/contrib/completions.fish ${PREFIX}/share/fish/completions/exa.fish
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} ${WRKSRC}/contrib/completions.zsh ${PREFIX}/share/zsh/site-functions/_exa
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/contrib/completions.bash ${PREFIX}/share/bash-completion/completions/exa

.include <bsd.port.mk>
